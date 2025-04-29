<?php
namespace PHPEMS;

class action extends app
{
    public function display()
    {
        $action = $this->ev->url(3);
        if(!method_exists($this,$action))
            $action = "index";
        $this->$action();
        exit;
    }

    private function index()
    {
        // 确保会话已启动
        if (session_status() != PHP_SESSION_ACTIVE) {
            session_start();
        }
        
        // 构建基础URL和服务URL
        $baseUrl = $this->getBaseUrl();
        $serviceUrl = $baseUrl . '/index.php?user-app-cas';

        if(USECAS)
        {
            if(HE)
            {
                ini_set('display_errors', 1);
                error_reporting(E_ALL);
            }

            if(!file_exists(__DIR__ . '/../../../vendor/autoload.php'))
            {
                $message = array(
                    'statusCode' => 300,
                    "message" => "未找到Composer自动加载器，请先运行composer require jasig/phpcas"
                );
                \PHPEMS\ginkgo::R($message);
                exit;
            }

            try {
                // 使用Composer的自动加载器
                require_once(__DIR__ . '/../../../vendor/autoload.php');

                // 使用修复后的参数初始化CAS客户端
                \phpCAS::client(CAS_VERSION_2_0, CAS_HOST, intval(CAS_PORT), CAS_CONTEXT, $baseUrl);
                
                // 设置固定的service URL
                \phpCAS::setFixedServiceURL($serviceUrl);
                
                // 禁用证书验证
                \phpCAS::setNoCasServerValidation();

                if(!\phpCAS::isAuthenticated())
                {
                    \phpCAS::forceAuthentication();
                }

                // 获取CAS用户名
                $casUsername = \phpCAS::getUser();
                
                // 获取用户属性
                $attributes = \phpCAS::getAttributes();
                
                // 获取真实姓名和邮箱，如果存在
                $realname = "";
                $email = "";
                
                if (\phpCAS::hasAttribute('USER_NAME')) {
                    $realname = \phpCAS::getAttribute('USER_NAME');
                }
                
                if (\phpCAS::hasAttribute('EMAIL')) {
                    $email = \phpCAS::getAttribute('EMAIL');
                }
                
                // 如果获取不到姓名，使用用户名作为默认值
                if(empty($realname)) {
                    $realname = $casUsername;
                }
                
                // 如果获取不到邮箱，使用默认邮箱
                if(empty($email)) {
                    $email = $casUsername . '@phpems.com';
                }
                
                // 记录CAS认证成功的信息
                if(HE)
                {
                    $logInfo = [
                        'time' => date('Y-m-d H:i:s'),
                        'username' => $casUsername,
                        'attributes' => $attributes
                    ];
                    file_put_contents(__DIR__ . '/../../../cas_login_success.log', json_encode($logInfo, JSON_PRETTY_PRINT) . "\n", FILE_APPEND);
                }

                $user = $this->user->getUserByUserName($casUsername);
                if(!$user)
                {
                    if(CAS_AUTO_CREATE_USER)
                    {
                        // 生成随机密码
                        $randomPassword = md5(uniqid(rand(), true));
                        
                        // 自动创建用户，使用从CAS获取的属性
                        $userData = array(
                            'username' => $casUsername,
                            'useremail' => $email,
                            'userpassword' => $randomPassword,
                            'usergroupid' => 1, // 默认用户组
                            'usertruename' => $realname // 设置真实姓名
                        );
                        $this->user->insertUser($userData);
                        $user = $this->user->getUserByUserName($casUsername);
                    }
                    else
                    {
                        $message = array(
                            'statusCode' => 300,
                            "message" => "用户不存在"
                        );
                        \PHPEMS\ginkgo::R($message);
                        exit;
                    }
                }
                else if(!empty($realname) && $realname != $casUsername)
                {
                    // 如果用户存在但没有真实姓名，则更新真实姓名
                    if(empty($user['usertruename']))
                    {
                        $this->user->modifyUserInfo($user['userid'], ['usertruename' => $realname]);
                    }
                    
                    // 如果有邮箱信息，检查是否需要更新
                    if(!empty($email) && (empty($user['useremail']) || $user['useremail'] == $casUsername . '@phpems.com'))
                    {
                        $this->user->modifyUserInfo($user['userid'], ['useremail' => $email]);
                    }
                }

                // 设置用户会话
                $this->session->setSessionUser(array('sessionuserid'=>$user['userid'],'sessionpassword'=>$user['userpassword'],'sessionip'=>$this->ev->getClientIp(),'sessiongroupid'=>$user['usergroupid'],'sessionlogintime'=>TIME,'sessionusername'=>$user['username']));

                $message = array(
                    'statusCode' => 200,
                    "callbackType" => "forward",
                    "message" => "统一身份认证登录成功",
                    "forwardUrl" => "index.php"
                );
                \PHPEMS\ginkgo::R($message);
                exit;
            } catch (\Exception $e) {
                if(HE)
                {
                    $message = array(
                        'statusCode' => 300,
                        "message" => "CAS认证错误: " . $e->getMessage()
                    );
                    
                    // 记录CAS认证失败的信息
                    $logInfo = [
                        'time' => date('Y-m-d H:i:s'),
                        'error' => $e->getMessage(),
                        'trace' => $e->getTraceAsString()
                    ];
                    file_put_contents(__DIR__ . '/../../../cas_login_error.log', json_encode($logInfo, JSON_PRETTY_PRINT) . "\n", FILE_APPEND);
                }
                else
                {
                    $message = array(
                        'statusCode' => 300,
                        "message" => "CAS认证错误"
                    );
                }
                \PHPEMS\ginkgo::R($message);
                exit;
            }
        }
        else
        {
            $message = array(
                'statusCode' => 300,
                "message" => "统一身份认证未开启"
            );
            \PHPEMS\ginkgo::R($message);
            exit;
        }
    }
    
    // 退出登录
    private function logout()
    {
        // 确保会话已启动
        if (session_status() != PHP_SESSION_ACTIVE) {
            session_start();
        }
        
        // 构建基础URL和服务URL
        $baseUrl = $this->getBaseUrl();
        $serviceUrl = $baseUrl . '/index.php';
        
        if(USECAS)
        {
            // 清除本地会话
            $this->session->clearSessionUser();
            $_SESSION['openid'] = '';
            
            // 使用Composer的自动加载器
            require_once(__DIR__ . '/../../../vendor/autoload.php');
            
            // 初始化CAS并设置服务URL
            \phpCAS::client(CAS_VERSION_2_0, CAS_HOST, intval(CAS_PORT), CAS_CONTEXT, $baseUrl);
            \phpCAS::setFixedServiceURL($serviceUrl);
            \phpCAS::setNoCasServerValidation();
            
            try {
                // 重定向到CAS注销页面
                \phpCAS::logout(['service' => $serviceUrl]);
            } catch (\Exception $e) {
                if(HE)
                {
                    // 记录CAS注销失败的信息
                    $logInfo = [
                        'time' => date('Y-m-d H:i:s'),
                        'error' => $e->getMessage(),
                        'trace' => $e->getTraceAsString()
                    ];
                    file_put_contents(__DIR__ . '/../../../cas_logout_error.log', json_encode($logInfo, JSON_PRETTY_PRINT) . "\n", FILE_APPEND);
                }
                
                $message = array(
                    'statusCode' => 200,
                    "message" => "注销成功",
                    "callbackType" => "forward",
                    "forwardUrl" => "index.php"
                );
                \PHPEMS\ginkgo::R($message);
                exit;
            }
        }
        else
        {
            $message = array(
                'statusCode' => 300,
                "message" => "统一身份认证未开启"
            );
            \PHPEMS\ginkgo::R($message);
            exit;
        }
    }
    
    /**
     * 获取基础URL
     * 
     * @return string 基础URL，包含协议和主机名
     */
    private function getBaseUrl()
    {
        // 从配置中获取SITE_URL，如果定义了的话
        if(defined('SITE_URL') && SITE_URL) {
            return rtrim(SITE_URL, '/');
        }
        
        // 从请求中获取
        $protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
        $host = isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : 'localhost';
        
        return $protocol . $host;
    }
}
?> 