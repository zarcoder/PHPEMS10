{x2;include:header}
<body>
<div class="container-fluid" style="height: 100vh;background:radial-gradient(circle at 50% 30%, #204198, #000);">
	<div class="row-fluid">
		<div class="pages">
			<div class="content" style="margin-top: 10vh;">
				<div class="col-xs-3 padding"></div>
				<div class="col-xs-6 nopadding">
					<div class="content-box padding">
						<h2 class="title">
							用户登录
							{x2;if:USEWX}
							<a class="pull-right badge" href="index.php?weixin-app-index-login">扫码登录</a>
							{x2;else}
							<a href="index.php" class="badge pull-right">首页</a>
							{x2;endif}
						</h2>
						<form method="post" action="index.php?user-app-login">
							<fieldset class="logbox">
								<div class="form-group underline">
									<label class="block">
										<div class="col-xs-4 tip">
											用户名
										</div>
										<div class="col-xs-8">
											<input class="noborder" name="args[username]" datatype="userName" needle="needle" msg="请您输入正确的用户名" placeholder="请输入用户名">
										</div>
									</label>
								</div>
								<div class="form-group underline">
									<label class="block">
										<div class="col-xs-4 tip">
											密码
										</div>
										<div class="col-xs-8">
											<input class="noborder" type="password" name="args[userpassword]" datatype="password" needle="needle" msg="请您输入正确的密码" placeholder="请输入密码">
										</div>
									</label>
								</div>
								<div class="form-group text-center">
									<button class="btn btn-primary login">登录</button>
									<input type="hidden" value="1" name="userlogin"/>
									{x2;if:defined('SHOWREGISTER') && SHOWREGISTER}
									<a href="index.php?user-app-register" class="btn btn-default login">注册</a>
									{x2;endif}
								</div>
								{x2;if:defined('USECAS') && USECAS}
								<div class="form-group text-center" style="margin-top:10px;">
									<a href="index.php?user-app-cas" class="btn btn-info login">统一身份认证登录</a>
								</div>
								{x2;endif}
							</fieldset>
						</form>
					</div>
				</div>
				<div class="col-xs-3 padding"></div>
			</div>
		</div>
	</div>
</div>
</body>
</html>