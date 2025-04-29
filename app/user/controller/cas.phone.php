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
        // 定义服务URL
        $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
        $host = $_SERVER['HTTP_HOST'];
        $serviceUrl = $protocol . $host . '/index.php?user-phone-cas';
        $baseUrl = $protocol . $host;

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
                    "message" => "未找到CAS库，请先运行composer require jasig/phpcas"
                );
                \PHPEMS\ginkgo::R($message);
                exit;
            }

            try {
                require_once(__DIR__ . '/../../../vendor/jasig/phpcas/source/CAS.php');

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
                $realname = \phpCAS::getAttribute('USER_NAME');
                $email = \phpCAS::getAttribute('EMAIL');
                
                // 如果获取不到姓名，使用用户名作为默认值
                if(empty($realname)) {
                    $realname = $casUsername;
                }
                
                // 如果获取不到邮箱，使用默认邮箱
                if(empty($email)) {
                    $email = $casUsername . '@phpems.com';
                }

                $user = $this->user->getUserByUserName($casUsername);
                if(!$user)
                {
                    if(CAS_AUTO_CREATE_USER)
                    {
                        // 自动创建用户，使用从CAS获取的真实姓名
                        $userData = array(
                            'username' => $casUsername,
                            'useremail' => $email,
                            'userpassword' => \PHPEMS\ev::random(6),
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

    private function logout()
    {
        if(USECAS)
        {
            $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
            $host = $_SERVER['HTTP_HOST'];
            $serviceUrl = $protocol . $host . '/index.php';
            $baseUrl = $protocol . $host;
            
            // 清除本地会话
            $this->session->clearSessionUser();
            $_SESSION['openid'] = '';
            
            // 加载CAS库
            require_once(__DIR__ . '/../../../vendor/jasig/phpcas/source/CAS.php');
            
            // 初始化CAS并设置服务URL
            \phpCAS::client(CAS_VERSION_2_0, CAS_HOST, intval(CAS_PORT), CAS_CONTEXT, $baseUrl);
            \phpCAS::setFixedServiceURL($serviceUrl);
            \phpCAS::setNoCasServerValidation();
            
            // 重定向到CAS注销页面
            \phpCAS::logout(['service' => $serviceUrl]);
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
}
?> 