<%--
  Created by IntelliJ IDEA.
  User: 梦著灬魂葬
  Date: 2019/3/17
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script language="JavaScript" src="js/jquery_ht.js"></script>
    <script type="text/javascript">
        $(function(){
            //顶部导航切换
            $(".nav li a").click(function(){
                $(".nav li a.selected").removeClass("selected")
                $(this).addClass("selected");
            })
            //退出功能
            $("#out").click(function () {
             var flag= window.confirm("你真的要退出嘛？");
             if(flag){
                 window.top.location.href="Byhz.jsp";
             }
            })
        })
    </script>


</head>

<body style="background-color: #0f3370;">

<div style="height:88px;float:left; width:320px; background-color: #0f3370;">
    <a><img src="images/logo.png" title="系统首页" /></a>
</div>

<div style="height:88px; background-color: #0f3370; float:right;">
    <ul>
        <li><a href="javascript:void(0)" id="out" style="font-size: 15px; color: #eeeeee;">退出</a></li>
    </ul>

    <div class="user">
        <span>欢迎你 admin</span>
    </div>

</div>

</body>
</html>
