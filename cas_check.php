<?php
// 必须在输出任何HTML内容前启动会话
session_start();

// 开启错误显示
ini_set('display_errors', 1);
error_reporting(E_ALL);

// 定义路径常量
define("PEPATH", dirname(__FILE__));

// 加载配置文件
require_once PEPATH.'/lib/config.inc.php';

// 加载Composer自动加载器
require_once PEPATH.'/vendor/autoload.php';

// 定义输出函数
function output($title, $content = '', $isError = false) {
    $bgColor = $isError ? '#ffebee' : '#f5f5f5';
    $textColor = $isError ? '#c62828' : '#212121';
    echo "<div style='margin:10px 0;padding:15px;background:{$bgColor};color:{$textColor};border-radius:4px;'>";
    echo "<h3 style='margin-top:0;'>{$title}</h3>";
    if ($content) {
        if (is_string($content)) {
            echo "<p>{$content}</p>";
        } else {
            echo "<pre>" . print_r($content, true) . "</pre>";
        }
    }
    echo "</div>";
}

// 页面基本样式
echo "<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>CAS 连接测试</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 1000px; margin: 0 auto; padding: 20px; }
        .button { display: inline-block; background: #2196F3; color: white; padding: 10px 15px; text-decoration: none; border-radius: 4px; }
        .button.logout { background: #F44336; }
    </style>
</head>
<body>
    <h1>CAS 连接测试</h1>";

// 基础URL和服务URL
$baseUrl = isset($_SERVER['HTTP_HOST']) 
    ? ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://") . $_SERVER['HTTP_HOST']
    : 'http://localhost:8000';
$serviceUrl = $baseUrl . '/cas_check.php';

// 显示基本配置信息
output("CAS 配置信息", [
    '服务器主机' => CAS_HOST,
    '服务器端口' => CAS_PORT,
    '服务器路径' => CAS_CONTEXT,
    'CAS协议版本' => CAS_VERSION,
    '是否启用CAS' => USECAS ? '是' : '否',
    '服务URL' => $serviceUrl,
    '基础URL' => $baseUrl
]);

// 初始化phpCAS
try {
    // 初始化CAS客户端
    \phpCAS::client(CAS_VERSION_2_0, CAS_HOST, intval(CAS_PORT), CAS_CONTEXT, $baseUrl);
    
    // 设置固定的service URL
    \phpCAS::setFixedServiceURL($serviceUrl);
    
    // 禁用SSL证书验证
    \phpCAS::setNoCasServerValidation();
    
    output("phpCAS 初始化成功", "phpCAS版本: " . \phpCAS::getVersion());
} catch (\Exception $e) {
    output("phpCAS 初始化失败", $e->getMessage(), true);
    echo "</body></html>";
    exit;
}

// 处理不同的场景
if (isset($_GET['logout'])) {
    // 处理登出请求
    output("正在处理登出请求", "即将重定向到CAS服务器的登出页面");
    try {
        // 清除本地会话
        session_destroy();
        
        // 重定向到CAS注销页面
        \phpCAS::logout(['service' => $serviceUrl]);
    } catch (\Exception $e) {
        output("CAS登出过程中出错", $e->getMessage(), true);
        echo "<p><a href='{$serviceUrl}' class='button'>返回首页</a></p>";
    }
} elseif (isset($_GET['force_login'])) {
    // 强制登录
    try {
        \phpCAS::forceAuthentication();
        // 注意：forceAuthentication会重定向，下面的代码正常情况下不会执行
        output("正在重定向到CAS登录页面", "如果您看到此消息，表示重定向失败");
    } catch (\Exception $e) {
        output("强制认证过程中出错", $e->getMessage(), true);
    }
} else {
    // 检查是否已通过CAS认证
    if (\phpCAS::isAuthenticated()) {
        output("CAS认证状态", "已通过CAS认证", false);
        
        // 显示用户信息
        $username = \phpCAS::getUser();
        output("用户名", $username);
        
        // 尝试获取属性
        $attributes = \phpCAS::getAttributes();
        if (!empty($attributes)) {
            output("用户属性", $attributes);
        } else {
            output("用户属性", "未获取到任何属性");
        }
        
        // 显示登出链接
        echo "<p><a href='?logout=1' class='button logout'>退出登录</a></p>";
    } else {
        output("CAS认证状态", "未通过CAS认证");
        
        // 显示登录链接
        $loginUrl = \phpCAS::getServerLoginURL();
        echo "<p><a href='?force_login=1' class='button'>点击这里登录CAS</a></p>";
        output("CAS服务器登录URL", $loginUrl);
    }
}

// 页面结束
echo "</body></html>";
?> 