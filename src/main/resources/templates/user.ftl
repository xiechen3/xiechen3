<html>
<head>
    <title>用户登录</title>
    <link href="${request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body style="margin-top:50px;overflow: hidden;">
<a href="ceshi">测试</a>
<h1>${user.name}<h1/>
<h1>${user.id}<h1/>
<h1>${user.dj}<h1/>
<h1>${user.ye?string.number}￥<h1/>
<h1>${user.dqsj?string('yyyy-MM-dd hh:mm:ss')}<h1/>
<h1>${user.dj}<h1/>
<h1>${user.email}<h1/>
<h1>${user.tel}<h1/>
<h1>${user.scsj?string('yyyy-MM-dd hh:mm:ss')}<h1/>
<h1>${user.ljje}￥<h1/>
</body>
</html>
