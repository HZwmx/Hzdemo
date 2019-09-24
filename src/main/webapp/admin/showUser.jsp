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
        <li><a href="#">首页</a></li>
        <li><a href="#">管理信息</a></li>
        <li><a href="#">查看用户信息</a></li>
    </ul>
</div>

<div class="rightinfo">



    <table class="tablelist">
        <thead>
        <tr>
            <th>用户ID<i class="sort"><img src="images/px.gif" /></i></th>
            <th>用户名</th>
            <th>密码</th>
            <th>邮箱</th>
             <th>电话</th>
            <th>密保问题</th>
            <th>密保答案</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${user}" var="u">
            <tr>
                <td>${u.id}</td>
                <td>${u.username}</td>
                <td>${u.userpassword}</td>
                <td>${u.userE_mall}</td>
                <td>${u.userphone}</td>
                <td>${u.usersecret}</td>
                <td>${u.userproblem}</td>
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

