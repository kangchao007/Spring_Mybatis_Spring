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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<body>
<a href="jsp/EmpAdd.jsp">添加</a>
<form id="myForm" action="${pageContext.request.contextPath}/pageAll" method="post">
    姓名：<input type="text" name="name" value="${params.name}"><br>
    地址：<input type="text" name="address" value="${params.address}"><br>
    生日：<input type="date" name="birthdayFrom" value="${params.birthdayFrom}">-<input type="date" name="birthdayTo" value="${example.birthdayTo}"><br>
    <input id="pn" type="hidden" name="pageNum" value="${params.pageNum}">
    <input id="ps" type="hidden" name="pageSize" value="${params.pageSize}">
    <input type="submit" value="搜索">
</form>
<table align="center" border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>age</th>
        <th>address</th>
        <th>birthday</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${pageInfo.list}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.name}</td>
            <td>${u.age}</td>
            <td>${u.address}</td>
            <td>${u.birthday}</td>
            <td><a href="${pageContext.request.contextPath}/deleteByPrimaryKey/${u.id}">删除</a>||<a href="/selectByPrimaryKey/${u.id}">修改</a></td>
        </tr>
    </c:forEach>
</table>

<table align="center">
    <tr>
        <td><a href="javascript:toPage(1)">首页</a></td>
        <td><a href="javascript:toPage(${pageInfo.pageNum-1})">上一页</a></td>
        <td><a href="javascript:toPage(${pageInfo.pageNum+1})">下一页</a></td>
        <td><a href="javascript:toPage(${pageInfo.pages})">尾页</a></td>
        <td>第${pageInfo.pageNum}页/共${pageInfo.pages}页</td>
    </tr>
</table>
</body>
<script type="text/javascript">
    function toPage(pageNum) {
        $("#pn").val(pageNum)
        $("#ps").val(${params.pageSize})
        $("#myForm").submit()
    }
</script>

</html>
