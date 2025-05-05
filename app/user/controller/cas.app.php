<?php
namespace PHPEMS;

// 确保 Composer autoloader 在文件顶部加载
require_once(__DIR__ . '/../../../vendor/autoload.php');

// 引入 Monolog
use Monolog\Logger;
use Monolog\Handler\StreamHandler;

class action extends app
{
    private $log; // 添加一个日志记录器属性

    // 初始化日志记录器
    private function initLogger()
    {
        if (!$this->log) {
            // 定义日志文件路径
            $logPath = PEPATH . '/data/logs/cas.log';
            // 创建 logger 实例
            $this->log = new Logger('cas');
            // 添加 handler，设置日志级别为 DEBUG 以记录所有信息
            // 注意：在生产环境中，您可能希望将级别调整为 Logger::INFO 或更高
            $this->log->pushHandler(new StreamHandler($logPath, Logger::DEBUG));
        }
    }

    public function display()
    {
        // 在处理请求前初始化日志记录器
        $this->initLogger();

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

        // 记录服务URL（调试用） -> 使用 Monolog
        $this->log->debug('CAS Service URL Info', ['baseUrl' => $baseUrl, 'serviceUrl' => $serviceUrl]);

        if(USECAS)
        {
            if(HE)
            {
                ini_set('display_errors', 1);
                error_reporting(E_ALL);
            }

            try {
                // 使用Composer的自动加载器 - 这行需要删除，因为它已经在顶部加载
                // require_once(__DIR__ . '/../../../vendor/autoload.php'); 

                // 使用修复后的参数初始化CAS客户端
                \phpCAS::client(CAS_VERSION_2_0, CAS_HOST, intval(CAS_PORT), CAS_CONTEXT, $baseUrl);
                
                // 设置固定的service URL
                \phpCAS::setFixedServiceURL($serviceUrl);
                
                // 禁用证书验证
                \phpCAS::setNoCasServerValidation();

                if(!\phpCAS::isAuthenticated())
                {
                    // 日志记录（调试用） -> 使用 Monolog
                    $this->log->info('Attempting CAS authentication', ['serviceUrl' => $serviceUrl]);
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
                
                // === 新增：获取单位 ID 和名称 ===
                $unit_id = '';
                $unit_name = '';
                if (\phpCAS::hasAttribute('UNIT_UID')) { $unit_id = \phpCAS::getAttribute('UNIT_UID'); }
                if (\phpCAS::hasAttribute('UNIT_NAME')) { $unit_name = \phpCAS::getAttribute('UNIT_NAME'); }
                // === 结束新增 ===

                // === 新增：获取并处理 ID_TYPE ===
                $id_type = '';
                if (\phpCAS::hasAttribute('ID_TYPE')) {
                    $id_type = \phpCAS::getAttribute('ID_TYPE');
                }
                // 根据 ID_TYPE 确定用户组 ID
                $target_group_id = 1; // 默认用户组 ID
                switch ($id_type) {
                    case '1':
                        $target_group_id = 12;
                        break;
                    case '2':
                        $target_group_id = 13;
                        break;
                    case '3':
                        $target_group_id = 14;
                        break;
                    // default: 保持 $target_group_id 为 1
                }
                // === 结束新增 ===

                // 记录CAS认证成功的信息 -> 使用 Monolog
                // 在日志中也加入单位信息
                $this->log->info('CAS authentication successful', [
                    'username' => $casUsername,
                    'attributes' => $attributes,
                    'extracted_unit_id' => $unit_id,
                    'extracted_unit_name' => $unit_name
                ]);

                $user = $this->user->getUserByUserName($casUsername);

                $this->log->info('User get from database', ['user' => $user]);
                if(!$user)
                {
                    if(CAS_AUTO_CREATE_USER)
                    {
                        // 生成一个随机明文密码（不使用md5）
                        $plainPassword = substr(uniqid(rand(), true), 0, 10);
                        
                        // 自动创建用户，使用从CAS获取的属性
                        $userData = array(
                            'username' => $casUsername,
                            'useremail' => $email,
                            'userpassword' => md5($plainPassword), // 在这里进行md5哈希
                            'usergroupid' => $target_group_id, // 使用根据 ID_TYPE 确定的组ID
                            'usertruename' => $realname, // 设置真实姓名
                            'unit_id' => $unit_id, // 添加单位ID
                            'unit_name' => $unit_name, // 添加单位名称
                        );
                        
                        $userId = $this->user->insertUser($userData);

                        // 记录创建的用户信息（调试用） -> 使用 Monolog
                        $this->log->info('New user created via CAS', [
                            'username' => $casUsername,
                            'userid' => $userId,
                            'assigned_groupid' => $target_group_id, // 添加分配的组ID
                            'cas_id_type' => $id_type, // 添加CAS返回的ID_TYPE
                            'status' => 'Success'
                        ]);
                        
                        // 直接使用插入的数据构建$user变量用于会话
                        $user = $this->user->getUserById($userId);
                        $this->log->info('user', ['user' => $user]);
                        $user['userid'] = $userId; // 确保userId存在
                        // usergroupid 已经在 $userData 中
                        
                        // 确保用户创建成功（检查userId）
                        if(!$userId)
                        {
                            // 记录错误 -> 使用 Monolog
                            $this->log->error('Failed to retrieve user info after creation', ['username' => $casUsername]);
                            throw new \Exception("自动创建用户失败: " . $casUsername);
                        }
                    }
                    else
                    {
                        $message = array(
                            'statusCode' => 300,
                            "message" => "用户不存在，且未启用自动创建用户"
                        );
                        // 记录警告 -> 使用 Monolog
                        $this->log->warning('User not found and auto-create disabled', ['username' => $casUsername]);
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
                        // 记录信息 -> 使用 Monolog
                        $this->log->info('Updated user real name', ['userid' => $user['userid'], 'realname' => $realname]);
                        // 更新后重新获取用户信息
                        $user = $this->user->getUserById($user['userid']);
                    }
                    
                    // 如果有邮箱信息，检查是否需要更新
                    if(!empty($email) && (empty($user['useremail']) || $user['useremail'] == $casUsername . '@phpems.com'))
                    {
                        $this->user->modifyUserInfo($user['userid'], ['useremail' => $email]);
                        // 记录信息 -> 使用 Monolog
                        $this->log->info('Updated user email', ['userid' => $user['userid'], 'email' => $email]);
                        // 更新后重新获取用户信息
                        $user = $this->user->getUserById($user['userid']);
                    }
                }

                // === 新增：检查并更新单位信息 ===
                $updateData = []; // 用于收集需要更新的数据

                // 更新真实姓名 (逻辑保持不变)
                if (!empty($realname) && $realname != $casUsername && empty($user['usertruename'])) {
                    $updateData['usertruename'] = $realname;
                }

                // 更新邮箱 (逻辑保持不变)
                if (!empty($email) && (empty($user['useremail']) || $user['useremail'] == $casUsername . '@phpems.com')) {
                    $updateData['useremail'] = $email;
                }

                // 新增：检查并更新单位ID
                // 如果 CAS 提供了 unit_id 并且本地记录为空，或者与本地记录不同，则更新
                if (!empty($unit_id) && (!isset($user['unit_id']) || empty($user['unit_id']) || $user['unit_id'] != $unit_id)) {
                    $updateData['unit_id'] = $unit_id;
                }

                // 新增：检查并更新单位名称
                // 如果 CAS 提供了 unit_name 并且本地记录为空，或者与本地记录不同，则更新
                if (!empty($unit_name) && (!isset($user['unit_name']) || empty($user['unit_name']) || $user['unit_name'] != $unit_name)) {
                    $updateData['unit_name'] = $unit_name;
                }

                // 如果有需要更新的数据，则执行更新操作
                if (!empty($updateData)) {
                    $this->user->modifyUserInfo($user['userid'], $updateData);
                    // 记录更新信息
                    $this->log->info('Updated existing user info via CAS', [
                        'userid' => $user['userid'],
                        'updated_fields' => array_keys($updateData)
                    ]);
                    // 更新后重新获取完整的用户信息
                    $user = $this->user->getUserById($user['userid']);
                }
                // === 结束修改 ===

                // === 添加类型转换 ===
                // 确保 userid 始终为整数类型，以保证日志和会话数据的一致性
                $this->log->info('User info ready to set session', ['user' => $user]);
                if (isset($user['userid'])) {
                    $user['userid'] = (int) $user['userid'];
                }
                // === 结束类型转换 ===

                // 记录会话设置（调试用） -> 使用 Monolog
                $this->log->debug('Setting user session', ['username' => $user['username'], 'userid' => $user['userid']]);

                // 设置用户会话 (现在 userid 应该是整数)
                $this->session->setSessionUser(array(
                    'sessionuserid' => $user['userid'],
                    'sessionpassword' => $user['userpassword'],
                    'sessionip' => $this->ev->getClientIp(),
                    'sessiongroupid' => $user['usergroupid'],
                    'sessionlogintime' => TIME,
                    'sessionusername' => $user['username']
                ));

                // 确保会话已经保存
                session_write_close();
                // session_start(); // 移除或注释掉这一行

                $message = array(
                    'statusCode' => 200,
                    "callbackType" => "forward",
                    "message" => "统一身份认证登录成功",
                    "forwardUrl" => "index.php"
                );
                \PHPEMS\ginkgo::R($message);
                // exit;
            } catch (\Exception $e) {
                // 记录 CAS 认证错误 -> 使用 Monolog
                $this->log->error('CAS Authentication Error', [
                    'message' => $e->getMessage(),
                    'trace' => $e->getTraceAsString() // 记录完整的堆栈跟踪
                ]);

                if(HE) // 可以保留 HE 判断来决定是否在响应中显示详细错误
                {
                    $message = array(
                        'statusCode' => 300,
                        "message" => "CAS认证错误: " . $e->getMessage() // 可以考虑只显示通用错误给用户
                    );
                }
                else
                {
                    $message = array(
                        'statusCode' => 300,
                        "message" => "CAS认证错误" // 通用错误消息
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
            // 记录警告 -> 使用 Monolog
            $this->log->warning('CAS is disabled but CAS endpoint accessed');
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
        // $serviceUrl = $baseUrl . '/index.php'; // 如果不调用CAS logout，这个可能不需要
        
        if(USECAS)
        {
            // 记录本地登出事件 -> 使用 Monolog
            $userId = $this->session->getSessionValue('sessionuserid'); // 尝试获取用户ID用于日志
            $this->log->info('Local logout initiated', ['userid' => $userId ?? 'unknown']);

            // 清除本地会话
            $this->session->clearSessionUser();
            $_SESSION['openid'] = '';

            /* 注释掉CAS登出逻辑
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
                
                // 下面的消息和重定向移到外面
                // $message = array(...);
                // \PHPEMS\ginkgo::R($message);
                // exit;
            }
            */
            
            // 仅本地登出成功后，发送消息并重定向
            $message = array(
                'statusCode' => 200,
                "message" => "本地注销成功", // 修改消息文本以反映实际情况
                "callbackType" => "forward",
                "forwardUrl" => "index.php"
            );
            \PHPEMS\ginkgo::R($message);
            exit;
        }
        else
        {
            $message = array(
                'statusCode' => 300,
                "message" => "统一身份认证未开启"
            );
            // 记录警告 -> 使用 Monolog
            $this->log->warning('CAS is disabled but logout endpoint accessed');
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