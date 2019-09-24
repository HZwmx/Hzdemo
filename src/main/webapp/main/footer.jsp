<%--
  Created by IntelliJ IDEA.
  User: 梦著灬魂葬
  Date: 2019/3/17
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

</head>

<body>
<script src="js/jquery.vide.min.js"></script>
<div >
<div class="footer">
    <span>仅供学习交流，请勿用于任何商业用途 QQ:1215495343</span>
    <i>版权所有 魂葬专属/i>
</div>
</div>
</body>
</html>
