<%--
  Created by IntelliJ IDEA.
  User: 梦著灬魂葬
  Date: 2019/3/15
  Time: 22:13
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
    <title>欢迎登录后台管理系统</title>
    <link href="css/style_ht.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="js/jquery_ht.js"></script>
    <script src="js/cloud.js" type="text/javascript"></script>

    <script language="javascript">
        $(function(){
            $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
            $(window).resize(function(){
                $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
            })
        });
    </script>

</head>



<body style="background-color:#0f3370; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">


<div id="mainBody">
    <div id="cloud1" class="cloud"></div>
    <div id="cloud2" class="cloud"></div>
</div>


<div class="logintop">
    <span style="font-size: 25px;">欢迎登录极客网域商城后台管理界面平台</span>
</div>

<div class="loginbody">

    <span style="background: url(images/logo.png) no-repeat center;width:100%; height:71px; margin-top:75px;"></span>
    <br/>


    <div class="loginbox loginbox1">
        <form action="admin/adminLogin" method="post">

        <ul>
            <li><input name="adminname" type="text" class="loginuser" placeholder="用户名"/></li>
            <li><input name="adminpassword" type="password" class="loginpwd" placeholder="密码" /></li>

            <li><input name="" type="submit" class="loginbtn" value="登录"  onclick="javascript:window.location='main.html'" /></li>
        </ul>
        </form>


    </div>

</div>


<div class="loginbm">版权所有  魂葬专属  <a href="http://www.uimaker.com">com.hz.infomation</a>  仅供学习交流，勿用于任何商业用途 QQ:1215495343</div>


</body>


</html>
