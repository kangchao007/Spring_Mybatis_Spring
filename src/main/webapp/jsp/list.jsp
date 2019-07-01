<%--
  Created by IntelliJ IDEA.
  User: kangshuaixing
  Date: 2019/6/10
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>显示全部</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/jsp/add.jsp">添加</a>
<table align="center" border="1">
    <tr>
        <th>id</th>
        <th>username</th>
        <th>password</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${userList}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.userName}</td>
            <td>${u.passWord}</td>
            <td><a href="${pageContext.request.contextPath}/deleteUser/${u.id}">删除</a>||<a href="${pageContext.request.contextPath}/getByIdUser?id=${u.id}">修改</a></td>
        </tr>
    </c:forEach>
</table>

<span content="center">${img}</span>
</body>
</html>
