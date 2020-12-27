<%--
  Created by IntelliJ IDEA.
  User: ft
  Date: 2019/9/30
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<base href="${basePath}"/>
<head>
    <title>修改个人信息</title>
    <base href="${basePath}"/>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>科室信息</title>

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="images/favicon.ico"/>

    <!-- CSS
    ================================================== -->
    <%--<link href="css/layui.css" rel="stylesheet">--%>
    <!-- Bootstrap css file-->

    <link href="css/layui.css" rel="stylesheet">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font awesome css file-->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Default Theme css file -->
    <link id="switcher" href="css/themes/default-theme.css" rel="stylesheet">
    <!-- Slick slider css file -->
    <link href="css/slick.css" rel="stylesheet">
    <!-- Photo Swipe Image Gallery -->
    <link rel='stylesheet prefetch' href='css/photoswipe.css'>
    <link rel='stylesheet prefetch' href='css/default-skin.css'>

    <!-- Main structure css file -->
    <link href="css/style.css" rel="stylesheet">

    <%--<link rel="stylesheet" href="css/style.default.css">--%>

    <!-- Google fonts -->
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Habibi' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Cinzel+Decorative:900' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .card-header {
            -webkit-box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.05);
            box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.05);
            margin-bottom: 0;
            padding: 1rem 1.25rem;
            background-color: #fff;
            border-bottom: 1px solid #eee;
        }
        .align-items-center{
            -ms-flex-align:center!important;
            align-items:center!important
        }
        .d-flex{
            display:-ms-flexbox!important;
            display:flex!important
        }
        .card {
            margin-bottom: 30px;
            -webkit-box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.1), -1px 0 2px rgba(0, 0, 0, 0.05);
            box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.1), -1px 0 2px rgba(0, 0, 0, 0.05);
        }
        .card-close {
            position: absolute;
            top: 15px;
            right: 15px;
        }
        .card-body {
            padding: 1.25rem;
        }
        .btn {
            font-weight: 400;
            border: 1px solid transparent;
            padding: 0.375rem 0.75rem;
            font-size: 1.5rem;
            line-height: 2;
            border-radius: 0.5rem;
            -webkit-transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
            transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
            transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
        }
        .btn-primary {
            color: color-yiq(#796AEE);
            background-color: #796AEE;
            border-color: #796AEE;
        }

        .btn-primary:hover {
            color: color-yiq(#5a48ea);
            background-color: #5a48ea;
            border-color: #503ce9;
        }

        .btn-primary:focus, .btn-primary.focus {
            -webkit-box-shadow: 0 0 0 0.2rem rgba(121, 106, 238, 0.5);
            box-shadow: 0 0 0 0.2rem rgba(121, 106, 238, 0.5);
        }

        .btn-primary.disabled, .btn-primary:disabled {
            color: color-yiq(#796AEE);
            background-color: #796AEE;
            border-color: #796AEE;
        }
        .col-lg-4{
            height: 200px;
            position:relative;
            min-height:1px;
            padding-right:15px;
            padding-left:15px;
            width:20%;
        }
    </style>
</head>
<body >
<!-- BEGAIN PRELOADER -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>
<!-- END PRELOADER -->

<!-- SCROLL TOP BUTTON -->
<a class="scrollToTop" href="#"><i class="fa fa-heartbeat"></i></a>
<!-- END SCROLL TOP BUTTON -->

<!--=========== BEGIN HEADER SECTION ================-->
<header id="header">
    <!-- BEGIN MENU -->
    <div class="menu_area">

        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <c:if test="${sessionScope.card.userId==null}">
                <div style="float: right;margin-top: 10px">
                    <a href="user_login.jsp"> <button class="layui-btn layui-btn-warm layui-btn-radius">登录</button></a>
                </div>
            </c:if>
            <c:if test="${sessionScope.card.userId!=null}">
                <div style="float: right;margin-top: 10px">
                    <a href="card/logout"> <button class="layui-btn layui-btn-warm layui-btn-radius">${sessionScope.card.userName}退出</button></a>
                </div>
            </c:if>
            <div class="container">
                <div class="navbar-header">
                    <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- LOGO -->
                    <!-- TEXT BASED LOGO -->
                    <a class="navbar-brand" href="hello.jsp"><i class="fa fa-heartbeat"></i>Eleven <span>门诊</span></a>
                    <!-- IMG BASED LOGO  -->
                    <!--  <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>   -->
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul id="top-menu" class="nav navbar-nav navbar-right main-nav" >
                        <li class="active"><a href="hello.jsp">首页</a></li>
                        <li><a href="user/user_hospital.jsp">医院概括</a></li>
                        <li><a href="card/findDept">查看科室</a></li>
                        <li><a href="findAllNewsTitle">新闻中心</a></li>
                        <li class="dropdown">
                            <a href="card/findCase?userId=${sessionScope.card.userId}" class="dropdown-toggle"><!--data-toggle="dropdown"-->查看个人病例 <!--<span class="fa fa-angle-down"></span>--></a>
                        </li>
                        <li><a href="card/updateCardByUserId?userId=${sessionScope.card.userId}">修改个人信息</a></li>
                    </ul>

                </div><!--/.nav-collapse -->

            </div>

        </nav>
    </div>
    <!-- END MENU -->
</header>
<!--=========== BEGIN SLIDER SECTION ================-->
<section id="sliderArea">

</section>



<!--=========== BEGAIN Testimonial SECTION ================-->

<%--科室--%>


<%--<c:forEach items=" ${doctorPageInfo.list}" var="page">--%>
<div class="card-header d-flex align-items-center"style="margin-left: 12%;margin-top: 100px">
    <h3 class="h4">当前位置：修改个人卡的信息</h3>
</div>
<div style="height: 620px;padding-top: 10px; ">
<div style="padding:5px;margin-left: auto;margin-right: auto; width: 400px;height: 600px;">
    <%--<div style="width:200px;margin-left: auto;margin-right: auto;">
        目前只支持手机号与预留手机好的修改，添加手机号后可用手机号进行登录。
    </div>--%>
    <form class="form-horizontal" action="card/updateCardByUserIdEnd" method="post" style="margin-right:auto;margin-left:auto;width:210px;">
        <br>姓名：<input class="form-control mb-3" readonly="readonly" type="text" name="userName" value="${card.userName}">
        <br>性别：<input class="form-control mb-3" readonly="readonly" type="text" name="userSex" value="${card.userSex}">
        <br>出生日期：<input class="form-control mb-3" readonly="readonly" type="text" name="userSex" value="${card.birthday}">
        <br>身份证号：<input class="form-control mb-3" readonly="readonly" type="text" name="userId" value="${card.userId}">
        <br>联系电话：<input class="form-control mb-3" type="text" name="userTel" value="${card.userTel}">
        <br>其他电话：<input class="form-control mb-3" type="text" name="sosTel" value="${card.sosTel}">
       <%-- ${card}${card.userTel}--%>
        <br><input class="btn btn-primary" type="submit" value="提交">
    </form>
</div>
</div>
<form>


</form>

<!-- jQuery Library  -->
<script src="js/jquery.js"></script>
<!-- Bootstrap default js -->
<script src="js/bootstrap.min.js"></script>
<!-- slick slider -->
<script src="js/slick.min.js"></script>
<script type="text/javascript" src="js/modernizr.custom.79639.js"></script>
<!-- counter -->
<script src="js/waypoints.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<!-- Doctors hover effect -->
<script src="js/snap.svg-min.js"></script>
<script src="js/hovers.js"></script>
<!-- Photo Swipe Gallery Slider -->
<script src='js/photoswipe.min.js'></script>
<script src='js/photoswipe-ui-default.min.js'></script>
<script src="js/photoswipe-gallery.js"></script>

<!-- Custom JS -->
<script src="js/custom.js"></script>
<script src="js/layui.js"></script>
</body>
</html>
