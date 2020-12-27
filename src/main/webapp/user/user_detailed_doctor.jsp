<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hzq
  Date: 2019/9/23
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <base href="${basePath}"/>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>医生详情</title>

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="images/favicon.ico"/>

    <!-- CSS
    ================================================== -->
    <link href="css/layui.css" rel="stylesheet">
    <!-- Bootstrap css file-->
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
</head>
<body>


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
<!--=========== END HEADER SECTION ================-->

<!--=========== BEGIN SLIDER SECTION ================-->
<section id="sliderArea">
</section>
<!--=========== END SLIDER SECTION ================-->




<!--=========== BEGAIN Why Choose Us SECTION ================-->
<section id="whychooseSection">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="service-area">
                    <!-- Start Service Title -->
                    <div class="section-heading">
                        <h2>医生详情</h2>
                        <div class="line"></div>
                    </div>
                </div>
            </div>



            <c:forEach items="${detailedDoctor}" var="de">
            <div class="col-lg-12 col-md-12">
                <div class="row">
                    <div class="col-lg-5 col-md-6 col-sm-6 col-xs-12">
                        <div <%--class="whyChoose-left"--%>>
                            <div class="whychoose-slider"style="margin-left: 150px">
                                <div class="whychoose-singleslide">
                                    <img src="${pageContext.request.contextPath}/${de.doctorPic}" alt="img">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6 col-sm-6 col-xs-12">
                        <div class="whyChoose-right">
                            <div class="media">
                                <div class="media-body">
                                    <h4 class="media-heading">名字</h4>
                                    <p>${de.doctorName}</p>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h4 class="media-heading">级别</h4>
                                    <p>${de.role.roleName}</p>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h4 class="media-heading">所属部门</h4>
                                    <p>${de.dept.deptName}</p>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h4 class="media-heading">医生信息</h4>
                                    <p>${de.doctorInfo}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>



        </div>
    </div>
</section>
<!--=========== END Why Choose Us SECTION ================-->




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
