<%--
  Created by IntelliJ IDEA.
  User: 梦著灬魂葬
  Date: 2019/7/3
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>时间日期选择器</title>
    <!--导入css-->
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
</head>
<body>

<table class="layui-hide" id="test"></table>



<script src="layui/layui.js" charset="utf-8"></script>
<script>
    layui.use(['element','laydate','table'],function () {
        var laydate=layui.laydate;
        var table=layui.table;

        table.render({
            elem: '#test'
            ,url:'admin/showAllUserOrder'
            , toolbar:'default'
            ,page:true
            ,limit:20
            ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,parseData:function (res) {
                console.log(res);
                return{
                    "code":0,
                    "msg":"",
                    "count":1000,
                    data:res
                }
            }
            ,cols: [[
                {   width:80,type:'checkbox'}
                , {field:'orderid', width:80, title: '订单id', sort: true}
                ,{field:'uid', width:80, title: '用户id'}
                ,{field:'shopid', width:80, title: '商品id', sort: true}
                ,{field:'shopname', width:80, title: '商品名称'}
                ,{field:'username', title: '用户名', width: '30%', minWidth: 100} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
                ,{field:'shopmoney', title: '商品价格', sort: true}
                ,{field:'shopstock', title: '商品数量', sort: true}
                ,{field:'shopPicname', title: '详情'}
                ,{field:'ifdeal', width:137, title: '是否处理', sort: true}
            ]]

    });

    });
</script>
</body>
</html>
