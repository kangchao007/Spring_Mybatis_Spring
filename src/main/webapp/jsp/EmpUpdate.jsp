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
<form action="${pageContext.request.contextPath}/updateByPrimaryKeySelective" method="post">
    <input type="hidden" name="id" value="${emp.id}">
姓名：<input type="text" name="name" value="${emp.name}"><br>
年龄：<input type="text" name="age" value="${emp.age}"><br>
    地址：<input type="text" name="address" value="${emp.address}" ><br>
    生日：<input type="date" name="birthday" value="${emp.birthday}" ><br>
    <input type="submit" value="修改">
</form>
</body>
</html>
