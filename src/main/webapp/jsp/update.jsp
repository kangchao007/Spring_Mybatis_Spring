<%--
  Created by IntelliJ IDEA.
  User: kangshuaixing
  Date: 2019/6/10
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改页面</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/updateUser" method="post">
    <input type="hidden" name="id" value="${user.id}">
用户名:<input type="text" name="userName" value="${user.userName}">
密码:<input type="text" name="passWord " value="${user.passWord}">
    <input type="submit" value="保存">
</form>
</body>
</html>
