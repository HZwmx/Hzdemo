<%--
  Created by IntelliJ IDEA.
  User: 梦著灬魂葬
  Date: 2019/6/27
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basepath= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <title>Join 极客网域</title>
    <base href="<%=basepath%>">

    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style type="text/css">
        *{
            margin: 0px;
            padding: 0px;
        }
        video{
            position: fixed;
            right: 0px;
            bottom: 0px;
            min-width: 100%;
            min-height: 100%;
            height: auto;
            width: auto;
            /*加滤镜*/
            -webkit-filter: grayscale(100%);
            filter:grayscale(100%);
        }
        source{
            min-width: 100%;
            min-height: 100%;
            height: auto;
            width: auto;
        }
    </style>
    <meta name="keywords" content="Event Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />


</head>
<body>


<video autoplay="autoplay" loop="loop">
    <source  src="video/showht.mp4" type="video/mp4" >
</video>

</body>
</html>

