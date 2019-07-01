<%--
  Created by IntelliJ IDEA.
  User: kangshuaixing
  Date: 2019/6/14
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示全部</title>

    <link rel="stylesheet" type="text/css" href="easyUI/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyUI/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="easyUI/css/demo.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
    <!--jquery.easyui.min.js包含了easyUI中的所有插件-->
    <script src="js/jquery.easyui.min.js"></script>

    <script type="text/javascript">
        $(function () {
            $("#but1").click(function () {
                //alert(213123)
                $.post("getAllEmpJson",null,function(data){
                    var table="<table border='1'>"
                    table=table+"<tr><td>编号</td><td>姓名</td><td>年龄</td><td>地址</td><td>生日</td></tr>"
                    for (var i = 0;i<data.length;i++) {
                        var s=data[i];
                        table=table+"<tr><td>"+s.id+"</td><td>"+s.name+"</td><td>"+s.age+"</td><td>"+s.address+"</td><td>"+s.birthday+"</td></tr>"
                    }
                    table=table+"</table>"
                    $("#div1").html(table)
                },"json")
            });

            $("#but2").click(function () {
                $('#dg').datagrid({
                    url:'getAllEmpByPage',
                    pagination:true,
                    pageList:[3,5,7,9],
                    columns:[[
                        {field:'ck',checkbox:true},
                        {field:'id',title:'id',width:100,align:'center'},
                        {field:'name',title:'姓名',width:100,align:'center'},
                        {field:'age',title:'年龄',width:100,align:'center'},
                        {field:'address',title:'地址',width:100,align:'center'},
                        {field:'birthday',title:'生日',width:100,align:'center',
                            formatter: function(value,row,index){
                                var date=new Date(value);
                                var year=date.getUTCFullYear()
                                var month=date.getMonth()+1
                                var day=date.getDay()
                                return year+"年"+month+"月"+day+"日"
                            }
                        }
                    ]]
                });
            })


            $("#dd").click(function () {
                $('#dd').dialog({
                    title: 'My Dialog',
                    width: 400,
                    height: 200,
                    closed: false,
                    cache: false,
                    href: 'get_content.php',
                    modal: true
                });

            })

        });
    </script>
</head>
<body>
<input type="button" id="but1" value="显示全部信息">
<div id="div1" align="center"></div>

<hr>
<%--<table class="easyui-datagrid" style="width:400px;height:250px"--%>
       <%--data-options="url:'getAllEmpJson',fitColumns:true,singleSelect:true">--%>
    <%--<thead>--%>
    <%--<tr>--%>
        <%--<th data-options="field:'id',width:100">id</th>--%>
        <%--<th data-options="field:'name',width:100">Name</th>--%>
        <%--<th data-options="field:'age',width:100,align:'right'">age</th>--%>
    <%--</tr>--%>
    <%--</thead>--%>
<%--</table>--%>
<input type="button" id="but2" value="显示全部DataGrid">
<table id="dg" align="center"></table>

<hr>

<div id="p" class="easyui-progressbar" data-options="value:60" style="width:400px;"></div>

<hr>

<div id="pp" class="easyui-pagination" style="background:#efefef;border:1px solid #ccc;"
     data-options="total:2000,pageSize:10">
</div>

<hr>
<div id="dd">

</div>
</body>
</html>
