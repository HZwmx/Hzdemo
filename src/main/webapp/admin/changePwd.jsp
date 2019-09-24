<%--
  Created by IntelliJ IDEA.
  User: 梦著灬魂葬
  Date: 2019/6/26
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basepath= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <base href="<%=basepath%>">
    <title>密码重置</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Shine Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
    />
    <script type="application/x-javascript">
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/style_1.css" type="text/css" media="all" /> <!-- Style-CSS -->
    <link rel="stylesheet" href="css/font-awesome_1.css"/> <!-- Font-Awesome-Icons-CSS -->
    <!-- Style-CSS -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //css files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=PT+Serif:400,400i,700,700i" rel="stylesheet">
    <!-- //online-fonts -->
</head>

<body>
<!--header-->
<div class="header-w3l">
    <h1>极客网域</h1>
</div>
<!--//header-->
<div class="main-content-agile">
    <div class="sub-main-w3">

                   <p style="color: black;font-size: 20px;">${flag}</p>

        <h2>密码 重置</h2>

        <div class="header-left-bottom agileinfo">
            <form action="admin/changePwd" method="post" >


            <div class="icon1">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <input type="text" placeholder="用户id" required="" name="userid" />
            </div>

                <div class="icon1">
                    <i class="fa fa-lock" aria-hidden="true"></i>
                    <input type="password" placeholder="新密码" required="" name="newpassword" />
                </div>
                <div class="bottom">
                    <input type="submit" value="重置"/>
                </div>
            </form>
        </div>

    </div>
</div>

</body>

</html>
