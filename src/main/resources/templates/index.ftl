
<html class="no-js" lang="en"><head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>login</title>
<link rel="stylesheet" type="text/css" href="${request.contextPath}/static/css/normalize.css">
<link rel="stylesheet" type="text/css" href="${request.contextPath}/static/css/demo.css">
<link rel="stylesheet" href="${request.contextPath}/static/js/vendor/jgrowl/css/jquery.jgrowl.min.css">
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="${request.contextPath}/static/css/component.css">
<!--[if IE]>
<script src="js/html5.js"></script>
<![endif]-->
<style>
	input::-webkit-input-placeholder{
		color:rgba(0, 0, 0, 0.726);
	}
	input::-moz-placeholder{   /* Mozilla Firefox 19+ */
		color:rgba(0, 0, 0, 0.726);
	}
	input:-moz-placeholder{    /* Mozilla Firefox 4 to 18 */
		color:rgba(0, 0, 0, 0.726);
	}
	input:-ms-input-placeholder{  /* Internet Explorer 10-11 */ 
		color:rgba(0, 0, 0, 0.726);
	}
</style>
</head>
<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header" style="height: 102px;overflow: hidden;">
					<canvas id="demo-canvas" width="1600" height="102"></canvas>
					<div class="logo_box">
						<h3>USER LOGIN</h3>
						<form action="${request.contextPath}/index/login" autocomplete="off" onsubmit="return login()" name="f" method="post">
							<div class="input_outer">
								<span class="u_user"></span>
								<input id="ID" name="name" class="text" style="color: #000000 !important" type="text" placeholder="请输入账户">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input id="PASSWORD" name="password" class="text" style="color: #000000 !important; position:absolute; z-index:100;" value="" type="password" placeholder="请输入密码">
							</div>
							<div id="LOGIN" class="mb2">
							<input class="act-but submit" type="submit" style="color: #FFFFFF" value="登录">
							</div>
							  <#if msg??>
                      &#12288&#12288&#12288&#12288 ${msg}或请
                         </#if>
                         <a href="index/register" style="color:white">注册 </a>
						</form>
					</div>
				</div>
			</div>
		</div><!-- /container -->
		<script src="${request.contextPath}/static/js/TweenLite.min.js"></script>
		<script src="${request.contextPath}/static/js/EasePack.min.js"></script>
		<script src="${request.contextPath}/static/js/jquery.js"></script>
		<script src="${request.contextPath}/static/js/rAF.js"></script>
		<script src="${request.contextPath}/static/js/demo-1.js"></script>
		<script src="${request.contextPath}/static/js/vendor/jgrowl/jquery.jgrowl.min.js"></script>
		<script src="${request.contextPath}/static/js/Longin.js"></script>
		<div style="text-align:center;">
</div>
	
<div id="jGrowl" class="top-right jGrowl"><div class="jGrowl-notification"></div></div></body></html>