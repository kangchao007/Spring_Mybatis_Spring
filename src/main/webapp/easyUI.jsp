<%--
  Created by IntelliJ IDEA.
  User: kangshuaixing
  Date: 2019/6/15
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="easyUI/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyUI/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="easyUI/css/demo.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <!--jquery.easyui.min.js包含了easyUI中的所有插件-->
    <script src="js/jquery.easyui.min.js"></script>

    <script type="text/javascript">
        $('#dd').dialog({
            title: 'My Dialog',
            width: 400,
            height: 200,
            closed: false,
            cache: false,
            href: 'get_content.php',
            modal: true,
            resizable:true
        });
    </script>
</head>
<body>
<%--<div id="dd" class="easyui-dialog" title="My Dialog" style="width:400px;height:200px;"--%>
     <%--data-options="iconCls:'icon-save',resizable:true,modal:true">--%>
    <%--dfsaffsafsaf--%>
<%--</div>--%>


<div id="dd">Dialog Content.</div>
</body>
</html>
