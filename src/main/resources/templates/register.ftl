
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
<script type="text/javascript">  
  
//倒计时  
function usernames(){
 var re = /^[a-zA-Z0-9]{4,6}$/;
 var username = document.getElementById("myname").value; ;
 if(re.test(username)){
 return false;
 }else{
 $.jGrowl("用户名必须是英文数字组成长度在4到6！", { header: '提醒' });
 }
}

function send(){
  var countdown=60;  
 var email = document.getElementById("email").value;
 var pattern = /^([A-Za-z0-9_\-\.\u4e00-\u9fa5])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,8})$/;
 if(pattern.test(email)){
 settime(countdown);
  $.ajax({  
         
        type: "GET",  
        url: "${request.contextPath}/index/emailsend",  
        data: {"email":email},  
        dataType: "json",  
        success:function(data){  
          console.log(data);  
          
        },  
        error:function(err){  
          console.log(err);  
        }
            });
            }else{
             $.jGrowl("请输入正确邮箱！", { header: '提醒' });
            }
}

    function settime(countdown) {  
 var _generate_code = $(".generate_code");  
      if (countdown == 0) {  
        _generate_code.attr("disabled",false);  
        _generate_code.val("获取验证码");  
        countdown = 60;  
        return false;  
      } else {  
        $(".generate_code").attr("disabled", true);  
        _generate_code.val("重新发送(" + countdown + ")");  
      countdown--;
       
      }  
      setTimeout(function() {  
        settime(countdown);  
      },1000);  
    }  
   
 
</script> 
</head>
<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header" style="height: 102px;overflow: scroll;">
					<canvas id="demo-canvas" width="1600" height="102"></canvas>
					<div class="logo_box">
						<h3>REGISTER</h3>
						<form action="${request.contextPath}/index/login" autocomplete="off" onsubmit="return login()" name="f" method="post">
							<div class="input_outer">
								<span class="u_user"></span>
								<input   id="myname" name="name" class="text" style="color: #000000 !important" type="text" placeholder="请输入账户" onblur="usernames()">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input id="PASSWORD" name="passwords" class="text" style="color: #000000 !important; position:absolute; z-index:100;" value="" type="password" placeholder="请输入密码">
							</div>
								<div class="input_outer">
								<span class="us_uer"></span>
								<input id="PASSWORD" name="password" class="text" style="color: #000000 !important; position:absolute; z-index:100;" value="" type="password" placeholder="请确认密码">
							</div>
							
								<div class="input_outer">
								<span class="u_uere"></span>
								<input id="email" name="email" class="text" style="color: #000000 !important; position:absolute; z-index:100;" value="" type="text" placeholder="请输入邮箱">
							</div> 
							<div class="input_outer1" style="text-align:right;position:relative;">
									<span class="us_uerh"></span>
								<input  name="email" class="text1" style="color: #000000 !important; position:absolute; z-index:100;" value="" type="text" placeholder="请输入邮箱">
						 <input id="eyzm" type="button"style="position:absolute;top:20%;right: 10px;" class="obtain generate_code" value=" 获取验证码" onclick="send();">  
							
							</div> 
							
							<div id="LOGIN" class="mb2">
							<input class="act-but submit" type="submit" style="color: #FFFFFF" value="注册">
							</div>
							  <#if msgs??>
                      &#12288&#12288&#12288&#12288&#12288 ${msgs}
                         </#if>
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