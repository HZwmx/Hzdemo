<%--
  Created by IntelliJ IDEA.
  User: 梦著灬魂葬
  Date: 2019/7/1
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basepath= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basepath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="css/style_ht.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery_ht.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $(".click").click(function(){
                $(".tip").fadeIn(200);
            });

            $(".tiptop a").click(function(){
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function(){
                $(".tip").fadeOut(100);
            });

            $(".cancel").click(function(){
                $(".tip").fadeOut(100);
            });

        });
    </script>



</head>


<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#" style="font-size: 15px;">首页</a></li>
        <li><a href="#" style="font-size: 15px; ">订单管理</a></li>
        <li><a href="#" style="font-size: 15px;">查看/管理用户订单</a></li>
    </ul>
</div>

<div class="rightinfo">



    <table class="tablelist">
        <thead>
        <tr>
            <th style="background: #0f3370;text-align:center;border-bottom:solid 2px #d7a372; color: #eeeeee;">订单id</th>
            <th style="background: #0f3370;text-align:center;border-bottom:solid 2px #d7a372; color: #eeeeee;">用户id</th>
            <th style="background: #0f3370;text-align:center;border-bottom:solid 2px #d7a372; color: #eeeeee;">用户名</th>
            <th style="background: #0f3370;text-align:center;border-bottom:solid 2px #d7a372; color: #eeeeee;">商品名称</th>
            <th style="background: #0f3370;text-align:center;border-bottom:solid 2px #d7a372; color: #eeeeee;">商品单价</th>
            <th style="background: #0f3370;text-align:center;border-bottom:solid 2px #d7a372; color: #eeeeee;">商品数量</th>
            <th style="background: #0f3370;text-align:center;border-bottom:solid 2px #d7a372; color: #eeeeee;">商品详情</th>
            <th style="background: #0f3370;text-align:center;border-bottom:solid 2px #d7a372; color: #eeeeee;">总价格</th>
            <th style="background: #0f3370;text-align:center;border-bottom:solid 2px #d7a372; color: #eeeeee;" >是否处理订单</th>
            <th style="background: #0f3370;text-align:center;border-bottom:solid 2px #d7a372; color: #eeeeee;">订单状态</th>

        </tr>
        </thead>
        <% int i=10; %>
        <tbody>
        <c:forEach items="${orders}" var="order">
            <% i++;%>
            <tr>
                <td id="<%=i%>" style=" font-size: 15px;font-weight:900; text-align: center;">${order.orderid}</td>
                <td style=" font-size: 15px;font-weight:900; text-align: center;">${order.uid}</td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;">${order.username}</td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;">${order.shopname}</td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;">${order.shopmoney}</td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;">${order.shopstock}</td>
                <td ><img src="images/${order.shopPicname}" alt="正在加载" width="60px" height="60px"/></td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;" >${order.shopmoney * order.shopstock}元</td>
                <td><a href="admin/dealOrder?orderid=${order.orderid}" style=" text-align: center;  font-size: 15px;font-weight:900; width: 80px; background-color: #0f3370; color: white;" onclick="return showInfo(); ">处理该订单</a> </td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;">${order.ifdeal==1?'已处理':'未处理'}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


</div>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>
<script type="text/javascript">
    function showInfo() {
        var  flag=confirm("是否处理该订单？admin");
            return flag;


    }

</script>

</body>

</html>

