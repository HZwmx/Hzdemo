<%--
  Created by IntelliJ IDEA.
  User: 梦著灬魂葬
  Date: 2019/6/28
  Time: 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basepath= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="zxx">
<!-- Head -->

<head>
    <base href="<%=basepath%>">
    <title>极客网域商城</title>
    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="Shopping Cart a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

        // var userid = document.getElementById('userid').value;
        //
        // alert(userid);

    </script>
    <!-- //Meta-Tags -->
    <!-- Index-Page-CSS -->
    <link rel="stylesheet" href="css/style_2.css" type="text/css" media="all">
    <!-- //Custom-Stylesheet-Links -->
    <!--fonts -->
    <link href="//fonts.googleapis.com/css?family=Marcellus+SC" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- //fonts -->

    <!-- Font-Awesome-File-Links -->
    <!-- CSS -->
    <link rel="stylesheet" href="css/font-awesome_2.css" type="text/css" media="all">
    <!-- //Font-Awesome-File-Links -->

</head>
<!-- //Head -->
<!-- Body -->

<%--<style>--%>
    <%--#box_hz {--%>
        <%--width: 200px;--%>
        <%--height: 60px;--%>
        <%--position: fixed;--%>
        <%--border: 1px solid red;--%>
        <%--text-align: center;--%>
        <%--top: 50%;--%>
        <%--left: 45%;--%>
        <%--display: none;--%>
        <%--background-color: white;--%>
    <%--}--%>
<%--</style>--%>
<body>
<%--<div>--%>
    <%--<div id="box_hz">--%>
        <%--<p style="font-size: 25px">添加成功</p>--%>
        <%--<input type="submit" id="boxinput" value="确定">--%>
    <%--</div>--%>
<%--</div>--%>

<div class="banner">
    <p style="background: #0f3370;font-size: 20px;float: right; margin-right: 50px; margin-top: 10px;" id="userid"><i style="color: #eeeeee">Hi!${user.username}</i></p>
    <p style="float: right;margin-right: 30px;background:#0f3370;font-size: 20px;margin-top: 10px; "><a style="color: white;" href="shop/myshopcar?uid=${user.id}&&userE_mall=${user.userE_mall}"><i>GO!支付</i></a></p>
    <p style="float: right;margin-right: 30px;background:#0f3370;font-size: 20px;margin-top: 10px; "><a style="color: white;" href="shop/myshopcar?uid=${user.id}&&userE_mall=${user.userE_mall}"><i>我的购物车</i></a></p>


    <div class="banner-layer">
        <h1 class="title-w3layouts">
            <span class="fa fa-cart-arrow-down" aria-hidden="true"></span>极客 专属</h1>
    </div>

    <!-- cart's-Product-Display -->
    <div class="wthreeproductdisplay">
        <div class="container">
            <div class="top-grid">
                <div class="cart-grid" id="cart-1">
                    <div class="img">
                        <img src="images/d5.jpg" alt="img">
                    </div>
                    <ul class="info">
                        <li>$288.00</li>
                        <li class="right-text">$300.00</li>
                    </ul>
                    <div class="snipcart-details ">
                        <form id="ismyform_1">
                            <%--<input type="hidden" name="cmd" value="_cart">--%>
                            <%--<input type="hidden" name="add" value="1">--%>
                            <%--<input type="hidden" name="w3l_item" value="Striped Top ">--%>
                            <%--<input type="hidden" name="amount" value="25.00">--%>
                            <%--<input type="hidden" name="item_name" value="Product #001" />--%>
                            <input type="hidden" name="shopstock" value="1">
                            <input type="hidden" name="shopmoeny" value="288.00">
                            <input type="hidden" name="shopname" value="瑶浴虹靴" >
                            <input type="hidden" name="uid" value="${user.id}">
                            <input type="hidden" name="shopPicname" value="d5.jpg">
                            <button type="button" class="button w3l-cart" data-id="cart-1" id="add_1">添加购物车</button>
                        </form>
                    </div>

                </div>
                <div class="cart-grid" id="cart-2">
                    <div class="img">
                        <img src="images/d1.jpg" alt="img">
                    </div>
                    <ul class="info">
                        <li>$800.00</li>
                        <li class="right-text">$980.00</li>
                    </ul>
                    <div class="snipcart-details ">
                        <form id="ismyform_2">
                            <input type="hidden" name="uid" value="${user.id}">
                            <input type="hidden" name="shopstock" value="1">
                            <input type="hidden" name="shopmoeny" value="800.00">
                            <input type="hidden" name="shopname" value="永痕璀璨" />
                            <input type="hidden" name="shopPicname" value="d1.jpg">
                            <button type="button" class="button w3l-cart" data-id="cart-3" id="add_hz" >添加购物车</button>
                        </form>
                    </div>
                </div>
                <div class="cart-grid" id="cart-3">
                    <div class="img">
                        <img src="images/d8.jpg" alt="img">
                    </div>
                    <ul class="info">
                        <li>$188.00</li>
                        <li class="right-text">$200.00</li>
                    </ul>
                    <div class="snipcart-details ">
                        <form id="ismyform_3">
                            <input type="hidden" name="uid" value="${user.id}">
                            <input type="hidden" name="shopstock" value="1">
                            <input type="hidden" name="shopmoeny" value="188.00">
                            <input type="hidden" name="shopname" value="绅士之行" />
                            <input type="hidden" name="shopPicname" value="d8.jpg">
                            <button type="button" class="button w3l-cart" data-id="cart-3" id="add_3">添加购物车</button>
                        </form>
                    </div>
                </div>
                <div class="cart-grid" id="cart-4">
                    <div class="img">
                        <img src="images/d4.jpg" alt="img">
                    </div>
                    <ul class="info">
                        <li>$4199.00</li>
                        <li class="right-text">$4399.00</li>
                    </ul>
                    <div class="snipcart-details ">
                        <form id="ismyform_4">
                            <input type="hidden" name="uid" value="${user.id}">
                            <input type="hidden" name="shopstock" value="1">
                            <input type="hidden" name="shopmoeny" value="4199.00">
                            <input type="hidden" name="shopname" value="极致畅翔#Zop" />
                            <input type="hidden" name="shopPicname" value="d4.jpg">
                            <button type="button" class="button w3l-cart" data-id="cart-4" id="add_4">添加购物车</button>
                        </form>
                    </div>
                </div>

                <div class="clear"></div>
            </div>
            <div class="bot-grid">
                <div class="cart-grid" id="cart-5">
                    <div class="img">
                        <img src="images/d7.jpg" alt="img">
                    </div>
                    <ul class="info">
                        <li>$259.00</li>
                        <li class="right-text">$299.00</li>
                    </ul>
                    <div class="snipcart-details ">
                        <form id="ismyform_5">
                            <input type="hidden" name="uid" value="${user.id}">
                            <input type="hidden" name="shopstock" value="1">
                            <input type="hidden" name="shopmoeny" value="259.00">
                            <input type="hidden" name="shopname" value="BSO衬衫#005" />
                            <input type="hidden" name="shopPicname" value="d7.jpg">
                            <button type="button" class="button w3l-cart" data-id="cart-5" id="add_5">添加购物车</button>
                        </form>
                    </div>
                </div>
                <div class="cart-grid" id="cart-6">
                    <div class="img">
                        <img src="images/pic_hz123.jpg" alt="img">
                    </div>
                    <ul class="info">
                        <li>$17999.00</li>
                        <li class="right-text">$20000.00</li>
                    </ul>
                    <div class="snipcart-details ">
                        <form id="ismyform_6">
                            <input type="hidden" name="uid" value="${user.id}">
                            <input type="hidden" name="shopstock" value="1">
                            <input type="hidden" name="shopmoeny" value="17999.00">
                            <input type="hidden" name="shopname" value="MAC便携本#005" />
                            <input type="hidden" name="shopPicname" value="pic_hz123.jpg">
                            <button type="button" class="button w3l-cart" data-id="cart-6" id="add_6">添加购物车</button>
                        </form>
                    </div>
                </div>
                <div class="cart-grid" id="cart-7">
                    <div class="img">
                        <img src="images/d2.jpg" alt="img">
                    </div>
                    <ul class="info">
                        <li>$999.00</li>
                        <li class="right-text">$1200.00</li>
                    </ul>
                    <div class="snipcart-details ">
                        <form id="ismyform_7">
                            <input type="hidden" name="uid" value="${user.id}">
                            <input type="hidden" name="shopstock" value="1">
                            <input type="hidden" name="shopmoeny" value="999.00">
                            <input type="hidden" name="shopname" value="Banour跑鞋 #007" />
                            <input type="hidden" name="shopPicname" value="d2.jpg">
                            <button type="button" class="button w3l-cart" data-id="cart-7" id="add_7">添加购物车</button>
                        </form>
                    </div>
                </div>
                <div class="cart-grid" id="cart-8">
                    <div class="img">
                        <img src="images/d6.jpg" alt="img">
                    </div>
                    <ul class="info">
                        <li>$129.00</li>
                        <li class="right-text">$159.00</li>
                    </ul>
                    <div class="snipcart-details ">
                        <form id="ismyform_8">
                            <input type="hidden" name="uid" value="${user.id}">
                            <input type="hidden" name="shopstock" value="1">
                            <input type="hidden" name="shopmoeny" value="129.00">
                            <input type="hidden" name="shopname" value="JGK梓镜" />
                            <input type="hidden" name="shopPicname" value="d6.jpg">
                            <button type="button" class="button w3l-cart" data-id="cart-8" id="add_8">添加购物车</button>
                        </form>
                    </div>
                </div>

                <div class="clear"></div>
            </div>
        </div>


    </div>
    <!-- //cart's-Product-Display -->

    <%--<div class="wthreecartaits wthreecartaits2 cart cart box_1">--%>
        <%--<form action="#" method="post" class="last">--%>
            <%--<button class="w3view-cart" type="submit" name="submit" value="">我的 购物车--%>
                <%--<span class="fa fa-cart-arrow-down" aria-hidden="true"></span>--%>
            <%--</button>--%>
        <%--</form>--%>
    <%--</div>--%>

    <div class="copyright text-center">
        <p>© 2019 极客商城 . 版权所有 . 极客网域

        </p>
    </div>

</div>

<!-- Default-JavaScript -->
<script src="js/jquery-2.2.3.js"></script>
<!-- Custom-JavaScript-File-Links -->

<!-- cart-js -->
<%--<script src="js/minicart.min.js"></script>--%>
<script>
    $(function () {
        $("#add_1").click(function () {

            $.ajax({

                type: "POST",
                url: "shop/addShopToCar",
                data: $('#ismyform_1').serialize(),
                async: false,
                dataType:"json",
                success: function (data) {
                    console.log(data);
                    alert("添加成功");

                },
                error: function (request) {  //失败的话
                    alert("Connection error");
                },
            });
        });

        $("#add_hz").click(function () {
            // alert("hello");
            $.ajax({

                type: "POST",
                url: "shop/addShopToCar",
                data: $('#ismyform_2').serialize(),
                async: false,
                dataType:"json",
                success: function (data) {
                    console.log(data);
                    alert("添加成功");

                },
                error: function (request) {  //失败的话
                    alert("Connection error");
                },
            });
        });


        $("#add_3").click(function () {
            // alert("hello");
            $.ajax({

                type: "POST",
                url: "shop/addShopToCar",
                data: $('#ismyform_3').serialize(),
                async: false,
                dataType:"json",
                success: function (data) {
                    console.log(data);
                    alert("添加成功");

                },
                error: function (request) {  //失败的话
                    alert("Connection error");
                },
            });
        });

        $("#add_4").click(function () {
            // alert("hello");
            $.ajax({

                type: "POST",
                url: "shop/addShopToCar",
                data: $('#ismyform_4').serialize(),
                async: false,
                dataType:"json",
                success: function (data) {
                    console.log(data);
                    alert("添加成功");

                },
                error: function (request) {  //失败的话
                    alert("Connection error");
                },
            });
        });


        $("#add_5").click(function () {
            // alert("hello");
            $.ajax({

                type: "POST",
                url: "shop/addShopToCar",
                data: $('#ismyform_5').serialize(),
                async: false,
                dataType:"json",
                success: function (data) {
                    console.log(data);
                    alert("添加成功");

                },
                error: function (request) {  //失败的话
                    alert("Connection error");
                },
            });
        });


        $("#add_6").click(function () {
            // alert("hello");
            $.ajax({

                type: "POST",
                url: "shop/addShopToCar",
                data: $('#ismyform_6').serialize(),
                async: false,
                dataType:"json",
                success: function (data) {
                    console.log(data);
                    alert("添加成功");

                },
                error: function (request) {  //失败的话
                    alert("Connection error");
                },
            });
        });


        $("#add_7").click(function () {
            // alert("hello");
            $.ajax({

                type: "POST",
                url: "shop/addShopToCar",
                data: $('#ismyform_7').serialize(),
                async: false,
                dataType:"json",
                success: function (data) {
                    console.log(data);
                    alert("添加成功");

                },
                error: function (request) {  //失败的话
                    alert("Connection error");
                },
            });
        });


        $("#add_8").click(function () {
            // alert("hello");
            $.ajax({

                type: "POST",
                url: "shop/addShopToCar",
                data: $('#ismyform_8').serialize(),
                async: false,
                dataType:"json",
                success: function (data) {
                    console.log(data);
                    alert("添加成功");

                },
                error: function (request) {  //失败的话
                    alert("Connection error");
                },
            });
        });

    });

    
</script>



</body>


</html>
