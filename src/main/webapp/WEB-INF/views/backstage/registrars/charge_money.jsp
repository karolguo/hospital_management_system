<%--
  Created by IntelliJ IDEA.
  User: ft
  Date: 2019/9/29
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<base href="${basePath}"/>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>充钱</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<div class="page">
    <!-- Main Navbar-->
    <header class="header">
        <nav class="navbar">
            <!-- Search Box-->
            <div class="search-box">
                <button class="dismiss"><i class="icon-close"></i></button>
                <form id="searchForm" action="#" role="search">
                    <input type="search" placeholder="What are you looking for..." class="form-control">
                </form>
            </div>
            <div class="container-fluid">
                <div class="navbar-holder d-flex align-items-center justify-content-between">
                    <!-- Navbar Header-->
                    <div class="navbar-header">
                        <!-- Navbar Brand --><a href="index.html" class="navbar-brand d-none d-sm-inline-block">
                        <div class="brand-text d-none d-lg-inline-block"><span>Eleven</span><strong>门诊</strong></div>
                        <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div></a>
                        <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                    </div>
                    <!-- Navbar Menu -->
                    <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                        <!-- Search-->

                        <!-- Notifications-->

                        <!-- Messages                        -->

                        <!-- Languages dropdown    -->

                        <!-- Logout    -->
                        <li class="nav-item"><a href="registrars/toRegLogin" class="nav-link logout"> <span class="d-none d-sm-inline">退出登录</span><i class="fa fa-sign-out"></i></a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>



    <div class="page-content d-flex align-items-stretch" style="height: 90%">
        <!-- Side Navbar -->
        <nav class="side-navbar">
            <!-- Sidebar Header-->
            <div class="sidebar-header d-flex align-items-center">
                <%--下面添加照片--%>
                <div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                <div class="title">
                    <h1 class="h4">${sessionScope.admin.adminRealName}</h1>
                    <p>${sessionScope.admin.role.roleName}</p>
                </div>
            </div>
            <!-- Sidebar Navidation Menus--><span class="heading">主页</span>
            <ul class="list-unstyled">
                <li class="active"><a href="registrars/test"> <i class="icon-home"></i>主页</a></li>

                <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>医疗卡操作 </a>
                    <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                        <%-- <li><a href="#">退号</a></li>--%>
                        <li><a href="card/findAllCard">查询医疗卡</a></li>
                        <%-- <li><a href="#">补办医疗卡</a></li>--%>
                    </ul>
                </li>
                <li><a href="registrars/findMessageForRegistrars?max=0">添加挂号单</a></li>
                <%-- <li><a href="#">退号</a></li>--%>
                <li><a href="registrars/findMessageForRegistrars?max=1">添加专家号</a></li>
            </ul>
        </nav>

        <div style="margin-right:auto;margin-left:auto;width: 200px;height: 200px;">
            <%--主体--%>

                <h2 style="margin-top: 10px;margin-right: auto;margin-right: auto;">请输入金额</h2>

                <div class="form-group row">
                    <div class="card-body">
                        <form method="post" action="card/addMoneyByUserId?userId=${card.userId}" class="form-inline" >
                           <%-- style="float:left;margin-left: 20%;margin-top: 200px"--%>
                            <div class="form-group">
                               <input type='number' value='100' min='100' maxlength='3' name="money" class="mr-3 form-control">
                            </div>
                            <div class="form-group" style="float: left">
                                <input type="submit" class="btn btn-primary" value="充值">
                               <%-- <button type="submit" class="btn btn-primary">查询</button>--%>
                            </div>
                        </form>
                    </div>
                </div>

                <%-- 欢迎来到充钱页面
                这位是${card.userName}
                <form method="post" action="card/addMoneyByUserId?userId=${card.userId}">
                   &lt;%&ndash; <input type="hidden" value="${card.money}" name="money">&ndash;%&gt;
                    请输入金额<input type='number' value='1' min='100' maxlength='3' name="money">
                    <input type="submit" value="充值">
                </form>--%>
            <%--主体--%>
        </div>

    </div>

</div>
<!-- JavaScript files-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper.js/umd/popper.min.js"> </script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="js/charts-home.js"></script>
<!-- Main File-->
<script src="js/front.js"></script>
</body>
</html>
