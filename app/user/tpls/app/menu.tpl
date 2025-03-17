<h2 class="title">功能导航</h2>
<ul class="list-unstyled list-txt">
	<li class="border{x2;if:$method == 'index'} active{x2;endif}">
		<a href="index.php?user-app">
			<span class="glyphicon glyphicon-user"></span> 个人中心
		</a>
	</li>
	<li  class="border{x2;if:$method == 'verify'} active{x2;endif}">
		<a href="index.php?user-app-verify">
			<span class="glyphicon glyphicon-eye-open"></span> 实名认证
		</a>
	</li>
	<li  class="border{x2;if:$method == 'exam'} active{x2;endif}">
		<a href="index.php?user-app-exam">
			<span class="glyphicon glyphicon-list-alt"></span> 我的考场
		</a>
	</li>
	{x2;if:$_user['groupmoduleid'] == 1}
	<li  class="border">
		<a href="index.php?core-master">
			<span class="glyphicon glyphicon-dashboard"></span> 后台管理
		</a>
	</li>
	{x2;endif}
    {x2;if:$_user['groupmoduleid'] == 12}
	<li  class="border">
		<a href="index.php?core-teach">
			<span class="glyphicon glyphicon-dashboard"></span> 教师管理
		</a>
	</li>
    {x2;endif}
</ul>