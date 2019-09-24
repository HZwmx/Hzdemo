<%--
  Created by IntelliJ IDEA.
  User: 梦著灬魂葬
  Date: 2019/6/26
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" import="java.lang.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basepath= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <base href="<%=basepath%>">
    <title>欢迎登陆极客网域</title>
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
    <!-- Style-CSS -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //css files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=PT+Serif:400,400i,700,700i" rel="stylesheet">
    <!-- //online-fonts -->
</head>

<body>
<%--记住密码功能--%>
<%
        String E_mail=null;
        String userpassword=null;
        Cookie [] cookie = request.getCookies();
        for (int i =0;i<cookie.length;i++){
            if(cookie[i].getName().equals("inckpassword")){
                //存储数据
                E_mail=cookie[i].getValue().split("-")[0];
                userpassword=cookie[i].getValue().split("-")[1];
                request.setAttribute("youxiang",E_mail);
                request.setAttribute("mima",userpassword);
            }
        }
%>
<!--header-->
<div class="header-w3l">
    <h1>极客网域</h1>
</div>
<!--//header-->
<div class="main-content-agile">
    <div class="sub-main-w3">

                   <p style="color: black;font-size: 20px;">${flag}</p>

        <h2>Login Here</h2>
        <form action="user/userlogin" method="post">
            <div class="pom-agile">
                <span class="fa fa-user" aria-hidden="true"></span>
                <input placeholder="邮箱" name="userE_mall" class="user" type="email" required="" value="${youxiang}">
            </div>
            <div class="pom-agile">
                <span class="fa fa-key" aria-hidden="true"></span>
                <input placeholder="密码" name="userPassword" class="pass" type="password" required="" value="${mima}">
            </div>
            <div class="sub-w3l">
                <div class="sub-agile">
                    <input type="checkbox" id="brand1" value="re" name="ckpassword">
                    <label for="brand1">
                        <span></span>记住密码</label>
                </div>
                <a href="forget.jsp">忘记密码</a>
                <div class="clear"></div>
            </div>
            <div class="right-w3l">
                <input type="submit" value="登陆"> <a class="hz" href="regUser.jsp">注册</a>
            </div>
        </form>
    </div>
</div>
<!--//main-->
<!--footer-->
<div class="footer">
    <p>欢迎登陆极客网域

    </p>
</div>
<!--//footer-->
</body>

</html>
