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
    <title>添加页面</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/addUser" method="post">
<input type="text" name="userName">
<input type="text" name="passWord">
    <input type="submit" value="添加">
</form>
</body>
</html>
