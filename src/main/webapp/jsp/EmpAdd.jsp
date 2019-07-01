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
<form action="${pageContext.request.contextPath}/insertSelective" method="post">
姓名：<input type="text" name="name"><br>
年龄：<input type="text" name="age"><br>
    地址：<input type="text" name="address"><br>
    生日：<input type="date" name="birthday"><br>
    <input type="submit" value="添加">
</form>
</body>
</html>
