<%--
  Created by IntelliJ IDEA.
  User: 梦著灬魂葬
  Date: 2019/6/29
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>

<%
    String path = request.getContextPath();
    String basepath= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basepath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>您的订单</title>
    <link href="css/style_3.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="js/jquery.js"></script>

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


<body bgcolor="#0f3370">


<div>
    <span style="font-size: 20px;color: white;float:left; line-height:40px; padding-left:7px; padding-right:12px;">位置：</span>
    <ul>
        <li style="font-size: 20px;color: white;float:left; line-height:40px; padding-left:7px; padding-right:12px;">首页</li>
        <li style="font-size: 20px;color: white;float: left; line-height:40px; padding-left:7px; padding-right:12px;">我的购物车</li>
        <li style="font-size: 20px;color: white;float:left; line-height:40px; padding-left:7px; padding-right:12px;">已支付订单 </li>

    </ul>
</div>

<div class="rightinfo">

    <table class="tablelist">
        <thead>
        <tr>
            <th >用户id<i class="sort"></i></th>
            <th>用户名</th>
            <th >商品名称</th>
            <th >商品单价</th>
            <th>商品数量</th>
            <th>商品详情</th>
            <th >总价格</th>
            <th >订单详情</th>>

        </tr>
        </thead>
        <tbody>


            <c:forEach items="${orders}" var="order">
            <tr>
                <td style=" font-size: 15px;font-weight:900; text-align: center;"> ${order.uid}</td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;">${order.username}</td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;">${order.shopname}</td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;">${order.shopmoney}</td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;">${order.shopstock}</td>
                <td ><img src="images/${order.shopPicname}" alt="正在加载" width="60px" height="60px"/></td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;" >${order.shopmoney * order.shopstock}元</td>
                <td>${order.ifdeal==0?'系统正在处理':'网域已发货'}</td>

            </tr>
            </c:forEach>

        </tbody>
    </table>


</div>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>




</body>

</html>
