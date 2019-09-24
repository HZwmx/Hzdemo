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
    <title>您的购物车</title>
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
        <li style="font-size: 20px;color: white;float: left; line-height:40px; padding-left:7px; padding-right:12px;">商品展示</li>
        <li style="font-size: 20px;color: white;float:left; line-height:40px; padding-left:7px; padding-right:12px;">我的购物车 </li>
        <a href="user/showuserOrder?uid=${user.id}"><li style="font-size: 20px;color: white;float:right; line-height:40px; padding-left:7px; padding-right:12px;">已支付订单</li></a>
    </ul>
</div>

<div class="rightinfo">



    <table class="tablelist">
        <thead>
        <tr>
            <th >用户id<i class="sort"></i></th>
            <th >用户名</th>
            <th >商品名称</th>
            <th >商品价格</th>
            <th >数量</th>
            <th>商品详情</th>
            <th >总价格</th>
            <th >是否结算</th>>

        </tr>
        </thead>
        <tbody>
        <%
            int i=10;

        %>

            <c:forEach items="${shopCars}" var="car">

               <%i++; %>
            <tr>
                <td style=" font-size: 15px;font-weight:900; text-align: center;"> ${user.id}</td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;">${user.username}</td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;">${car.shopname}</td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;">${car.shopmoeny}</td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;">${car.shopstock}</td>
                <td ><img src="images/${car.shopPicname}" alt="正在加载" width="60px" height="60px"/></td>
                <td style=" text-align: center;  font-size: 15px;font-weight:900;" id="<%= i%>">${car.shopmoeny * car.shopstock}元</td>
                <td><button value="${car.shopid}" id="${btn=btn+1}" style=" text-align: center;  font-size: 15px;font-weight:900; width: 80px; background-color: #0f3370; color: white;">支付</button></td>

            </tr>
            </c:forEach>

        </tbody>
    </table>


</div>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>
<script>
    //页面加载，绑定单击事件
    $(function () {
        $("#1").click(function () {
            var total = document.getElementById('11').innerHTML;
            var shopid= document.getElementById('1').value;
             var  flag=confirm("是否确认支付，支付金额:"+total);
             if (flag==false){
                 return;
             }
            $.ajax({
                //编写json格式，设置属性和值
                url:"shop/buyshop?shopid="+shopid,
                contentType:"application/json;charset=UTF-8",
                data:{},
                dataType:"json",
                type:"post",
                success:function (data) {
                   alert("支付成功");
                    window.location.reload();
                    alert("购物车已更新");
                }
            });
        });

        $("#2").click(function () {
            var total = document.getElementById('12').innerHTML;
            var shopid= document.getElementById('2').value;
            var  flag=confirm("是否确认支付，支付金额:"+total);
            if (flag==false){
                return;
            }
            $.ajax({
                //编写json格式，设置属性和值
                url:"shop/buyshop?shopid="+shopid,
                contentType:"application/json;charset=UTF-8",
                data:{},
                dataType:"json",
                type:"post",
                success:function (data) {
                    alert("支付成功");
                    window.location.reload();
                    alert("购物车已更新");
                }
            });
        });

        $("#3").click(function () {
            var total = document.getElementById('13').innerHTML;
            var shopid= document.getElementById('3').value;
            var  flag=confirm("是否确认支付，支付金额:"+total);
            if (flag==false){
                return;
            }
            $.ajax({
                //编写json格式，设置属性和值
                url:"shop/buyshop?shopid="+shopid,
                contentType:"application/json;charset=UTF-8",
                data:{},
                dataType:"json",
                type:"post",
                success:function (data) {
                    alert("支付成功");
                    window.location.reload();
                    alert("购物车已更新");
                }
            });
        });



        $("#4").click(function () {
            var total = document.getElementById('14').innerHTML;
            var shopid= document.getElementById('4').value;
            var  flag=confirm("是否确认支付，支付金额:"+total);
            if (flag==false){
                return;
            }
            $.ajax({
                //编写json格式，设置属性和值
                url:"shop/buyshop?shopid="+shopid,
                contentType:"application/json;charset=UTF-8",
                data:{},
                dataType:"json",
                type:"post",
                success:function (data) {
                    alert("支付成功");
                    window.location.reload();
                    alert("购物车已更新");
                }
            });
        });


        $("#5").click(function () {
            var total = document.getElementById('15').innerHTML;
            var shopid= document.getElementById('5').value;
            var  flag=confirm("是否确认支付，支付金额:"+total);
            if (flag==false){
                return;
            }
            $.ajax({
                //编写json格式，设置属性和值
                url:"shop/buyshop?shopid="+shopid,
                contentType:"application/json;charset=UTF-8",
                data:{},
                dataType:"json",
                type:"post",
                success:function (data) {
                    alert("支付成功");
                    window.location.reload();
                    alert("购物车已更新");
                }
            });
        });


        $("#6").click(function () {
            var total = document.getElementById('16').innerHTML;
            var shopid= document.getElementById('6').value;
            var  flag=confirm("是否确认支付，支付金额:"+total);
            if (flag==false){
                return;
            }
            $.ajax({
                //编写json格式，设置属性和值
                url:"shop/buyshop?shopid="+shopid,
                contentType:"application/json;charset=UTF-8",
                data:{},
                dataType:"json",
                type:"post",
                success:function (data) {
                    alert("支付成功");
                    window.location.reload();
                    alert("购物车已更新");
                }
            });
        });
        $("#7").click(function () {
            var total = document.getElementById('17').innerHTML;
            var shopid= document.getElementById('7').value;
            var  flag=confirm("是否确认支付，支付金额:"+total);
            if (flag==false){
                return;
            }
            $.ajax({
                //编写json格式，设置属性和值
                url:"shop/buyshop?shopid="+shopid,
                contentType:"application/json;charset=UTF-8",
                data:{},
                dataType:"json",
                type:"post",
                success:function (data) {
                    alert("支付成功");
                    window.location.reload();
                    alert("购物车已更新");
                }
            });
        });

        $("#8").click(function () {
            var total = document.getElementById('18').innerHTML;
            var shopid= document.getElementById('8').value;
            var  flag=confirm("是否确认支付，支付金额:"+total);
            if (flag==false){
                return;
            }
            $.ajax({
                //编写json格式，设置属性和值
                url:"shop/buyshop?shopid="+shopid,
                contentType:"application/json;charset=UTF-8",
                data:{},
                dataType:"json",
                type:"post",
                success:function (data) {
                    alert("支付成功");
                    window.location.reload();
                    alert("购物车已更新");
                }
            });
        });

        $("#9").click(function () {
            var total = document.getElementById('19').innerHTML;
            var shopid= document.getElementById('9').value;
            var  flag=confirm("是否确认支付，支付金额:"+total);
            if (flag==false){
                return;
            }
            $.ajax({
                //编写json格式，设置属性和值
                url:"shop/buyshop?shopid="+shopid,
                contentType:"application/json;charset=UTF-8",
                data:{},
                dataType:"json",
                type:"post",
                success:function (data) {
                    alert("支付成功");
                    window.location.reload();
                    alert("购物车已更新");
                }
            });
        });

        $("#10").click(function () {
            var total = document.getElementById('20').innerHTML;
            var shopid= document.getElementById('10').value;
            var  flag=confirm("是否确认支付，支付金额:"+total);
            if (flag==false){
                return;
            }
            $.ajax({
                //编写json格式，设置属性和值
                url:"shop/buyshop?shopid="+shopid,
                contentType:"application/json;charset=UTF-8",
                data:{},
                dataType:"json",
                type:"post",
                success:function (data) {
                    alert("支付成功");
                    window.location.reload();
                    alert("购物车已更新");
                }
            });
        });
    });

</script>



</body>

</html>
