<html>
<head>
    <title>用户登录</title>
    <link href="${request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body style="margin-top:50px;overflow: hidden;">
<form action="${request.contextPath}/index/login" method="post">
    <table class="gridtable" style="width:800px;">
    
        <tr>
            <th>用户名：</th>
            <td><input type="text" name="name" />
            </td>
            <th>密码：</th>
            <td><input type="password" name="password"/>
            </td>
            <td><input type="submit" value="登录"/></td>
        </tr>
    <#if msg??>
        <tr style="color:#00ba00;">
            <th colspan="5">${msg}</th>
        </tr>
    </#if>
    </table>
</form>
</body>
</html>
