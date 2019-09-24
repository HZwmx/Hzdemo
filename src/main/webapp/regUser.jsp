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
    <meta name="keywords" content="Event Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="css/style_1.css" type="text/css" media="all" /> <!-- Style-CSS -->
    <link rel="stylesheet" href="css/font-awesome_1.css"/> <!-- Font-Awesome-Icons-CSS -->
    <!-- //css files -->
    <!-- js -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <!-- //js -->
    <script type="text/javascript">
        function checkPass(){
            var pwd1=document.getElementById("p1").value;
            var pwd2=document.getElementById("p2").value;
            if(pwd1!=pwd2){
              alert("二次密码不一致");
            }
        }
    </script>
</head>
<body>
<script src="js/jquery.vide.min.js"></script>
<!-- main -->
<div data-vide-bg="video/Ipad">
    <div class="center-container">
        <div class="w3ls-header">
            <div class="header-main">
                <h1>JOIN US!!</h1>
                <p style="font-size: 20px;color:white;">${flag}</p>
                <div class="header-bottom">
                    <div class="header-right w3agile">
                        <div class="header-left-bottom agileinfo">
                            <form action="user/userRegistered" method="post" onsubmit="return checkPass()">
                                <div class="icon1">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <input  type="text" placeholder="请输入用户名" required="" name="username"/>
                                </div>
                                <div class="icon1">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <input type="email" placeholder="请输入E-mail" required="" name="userE_mall"/>
                                </div>
                                <div class="icon1">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                    <input type="tel" placeholder="电话号码" required="" name="userphone"/>
                                </div>
                                <div class="icon1">
                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                    <input type="password" placeholder="初始密码" required="" name="userpassword" id=""p1/>
                                </div>
                                <div class="icon1">
                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                    <input type="password" placeholder="再次输入密码" required="" id="p2"/>

                                </div>


                                <div class="icon1">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <input type="text" placeholder="密保问题" required="" name="userproblem" />
                                </div>
                                <div class="icon1">
                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                    <input type="text" placeholder="密保答案" required="" name="usersecret" />

                                </div>


                                <div class="bottom">
                                    <input type="submit" value="加入极客"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--header end here-->
        <!-- copyright start here -->
        <div class="copyright">
            <p> welcome  Join 极客网域</p>
        </div>
        <!--copyright end here-->
    </div>
</div>

</body>
</html>

