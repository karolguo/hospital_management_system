<%--
  Created by IntelliJ IDEA.
  User: hzq
  Date: 2019/9/23
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
    <base href="${basePath}"/>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>

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
                        <li>
                            <a href="card/updateCardByUserId?userId=${sessionScope.card.userId}" class="dropdown-toggle">修改个人信息</a>
                        </li>
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
    <!-- Start slider wrapper -->
    <div class="top-slider">
        <!-- Start First slide -->
        <div class="top-slide-inner">
            <div class="slider-img">
                <img src="images/14.jpg" alt="">
            </div>
            <div class="slider-text">
                <h2> <strong>Eleven 门诊</strong>保护您的健康</h2>
                <p><strong>我们的承诺</strong> 就是对您的负责，您的满意就是对我们的回报</p>
            </div>
        </div>
        <!-- End First slide -->

        <!-- Start 2nd slide -->
        <div class="top-slide-inner">
            <div class="slider-img">
                <img src="images/15.jpg" alt="">
            </div>
            <div class="slider-text">
                <h2><strong>最好的服务</strong> 保障您的安全</h2>
                <p><strong>Our commitment</strong> is responsible for you, your satisfaction is our return</p>
            </div>
        </div>
    </div><!-- /top-slider -->
</section>
<!--=========== END SLIDER SECTION ================-->

<!--=========== BEGIN Top Feature SECTION ================-->
<section id="topFeature">
    <div class="row">
        <!-- Start Single Top Feature -->
        <div class="col-lg-4 col-md-4">
            <div class="row">
                <div class="single-top-feature">
                    <span class="fa fa-flask"></span>
                    <h3>医院介绍</h3>
                    <p>Eleven建于1958年，国家卫生健康委委管医院，集医疗、教学、科研、预防、康复与保健为一体的综合性三甲医院。</p>
                    <div class="readmore_area">
                        <a href="user/user_hospital.jsp" data-hover="Read More"><span>阅读更多</span></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Single Top Feature -->

        <!-- Start Single Top Feature -->
        <div class="col-lg-4 col-md-4">
            <div class="row">
                <div class="single-top-feature opening-hours">
                    <span class="fa fa-clock-o"></span>
                    <h3>营业时间</h3>
                    <!-- <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh.</p>-->
                    <ul class="opening-table">
                        <li>
                            <span>Monday - Friday</span>
                            <div class="value">8.00 - 16.00</div>
                        </li>
                        <li>
                            <span>Saturday</span>
                            <div class="value">9.30 - 15.30</div>
                        </li>
                        <li>
                            <span>Sunday</span>
                            <div class="value">9.30 - 17.00</div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- End Single Top Feature -->

        <!-- Start Single Top Feature -->
        <div class="col-lg-4 col-md-4">
            <div class="row">
                <div class="single-top-feature">
                    <span class="fa fa-hospital-o"></span>
                    <h3>公开信息</h3>
                    <p>Eleven所有第一手新闻详情</p>
                    <div class="readmore_area">
                        <a href="findAllNewsTitle" data-hover="Appoinment"><span>阅读更多</span></a>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
    </div>
    </div>
    </div>
    <!-- End Single Top Feature -->
    </div>
</section>
<!--=========== END Top Feature SECTION ================-->

<!--=========== BEGIN Service SECTION ================-->
<section id="service">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="service-area">
                    <!-- Start Service Title -->
                    <div class="section-heading">
                        <h2>我们的服务</h2>
                        <div class="line"></div>
                    </div>
                    <!-- Start Service Content -->
                    <div class="service-content">
                        <div class="row">
                            <!-- Start Single Service -->
                            <div class="col-lg-4 col-md-4">
                                <div class="single-service">
                                    <div class="service-icon">
                                        <span class="fa fa-stethoscope service-icon-effect"></span>
                                    </div>
                                    <h3><a href="#">有氧运动检测</a></h3>
                                    <p>Polar 有氧健康测试是一种测量休息时有氧代谢能力（心血管健康水平）的简单且快捷的方法。</p>
                                </div>
                            </div>
                            <!-- Start Single Service -->
                            <div class="col-lg-4 col-md-4">
                                <div class="single-service">
                                    <div class="service-icon">
                                        <span class="fa fa-heartbeat service-icon-effect"></span>
                                    </div>
                                    <h3><a href="#">康复治疗</a></h3>
                                    <p>采取一切措施，减轻残疾和残疾带来的后果，提高才智和功能</p>
                                </div>
                            </div>
                            <!-- Start Single Service -->
                            <div class="col-lg-4 col-md-4">
                                <div class="single-service">
                                    <div class="service-icon">
                                        <span class="fa fa-h-square service-icon-effect"></span>
                                    </div>
                                    <h3><a href="#">医疗卫生保健</a></h3>
                                    <p>提供药学保健。药学保健是直接、负责地提供与药物治疗相关的服务，其目的是达到改善病人生命质量的确切效果。</p>
                                </div>
                            </div>
                            <!-- Start Single Service -->
                            <div class="col-lg-4 col-md-4">
                                <div class="single-service">
                                    <div class="service-icon">
                                        <span class="fa fa-medkit service-icon-effect"></span>
                                    </div>
                                    <h3><a href="#">背景调查</a></h3>
                                    <p>背景调查是由独立专业机构依托权威数据源通过合法的途径和方式对被调查人提交的个人背景信息进行核查比对并形成背景调查报告以辅助委托调查人验证其真伪。</p>
                                </div>
                            </div>
                            <!-- Start Single Service -->
                            <div class="col-lg-4 col-md-4">
                                <div class="single-service">
                                    <div class="service-icon">
                                        <span class="fa fa-user-md service-icon-effect"></span>
                                    </div>
                                    <h3><a href="#">专业的医生</a></h3>
                                    <p>钻研学习医学科学技术，挽救生命以治病为业的人</p>
                                </div>
                            </div>
                            <!-- Start Single Service -->
                            <div class="col-lg-4 col-md-4">
                                <div class="single-service">
                                    <div class="service-icon">
                                        <span class="fa fa-ambulance service-icon-effect"></span>
                                    </div>
                                    <h3><a href="#">24小时服务</a></h3>
                                    <p>24小时，时刻关注您的健康</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--=========== End Service SECTION ================-->
<!--=========== BEGAIN Why Choose Us SECTION ================-->
<section id="whychooseSection">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="service-area">
                    <!-- Start Service Title -->
                    <div class="section-heading">
                        <h2>为什么选择我们</h2>
                        <div class="line"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-12">
                <div class="row">
                    <div class="col-lg-5 col-md-6 col-sm-6 col-xs-12">
                        <div class="whyChoose-left">
                            <div class="whychoose-slider">
                                <div class="whychoose-singleslide">
                                    <img src="images/choose-us-img1.jpg" alt="img">
                                </div>
                                <div class="whychoose-singleslide">
                                    <img src="images/choose-us-img2.jpg" alt="img">
                                </div>
                                <div class="whychoose-singleslide">
                                    <img src="images/choose-us-img3.jpg" alt="img">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6 col-sm-6 col-xs-12">
                        <div class="whyChoose-right">
                            <div class="media">
                                <div class="media-left">
                                    <a href="#" class="media-icon">
                                        <span class="fa fa-hospital-o"></span>
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">良好的基础设备</h4>
                                    <p>我院拥有精良的设备，仪器，坚决维护患者健康</p>
                                </div>
                            </div>
                            <div class="media" style="margin-top: 50px">
                                <div class="media-left">
                                    <a href="#" class="media-icon">
                                        <span class="fa fa-user-md"></span>
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">合格的医生</h4>
                                    <p>我院的医生积极负责，刻苦钻研，以治病救人为己任</p>
                                </div>
                            </div>
                            <div class="media" style="margin-top: 50px">
                                <div class="media-left">
                                    <a href="#" class="media-icon">
                                        <span class="fa fa-ambulance"></span>
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">紧急支持</h4>
                                    <p>在您紧急需要帮助时，时刻守候在您身边</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--=========== END Why Choose Us SECTION ================-->

<!--=========== BEGAIN Counter SECTION ================-->
<section id="counterSection">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="counter-area">
                    <div class="col-lg-3 col-md-3 col-sm-6">
                        <div class="counter-box">
                            <div class="counter-no counter">
                                200
                            </div>
                            <div class="counter-label">医生</div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6">
                        <div class="counter-box">
                            <div class="counter-no counter">
                                300
                            </div>
                            <div class="counter-label">病房数量</div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6">
                        <div class="counter-box">
                            <div class="counter-no counter">
                                350
                            </div>
                            <div class="counter-label">奖项</div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6">
                        <div class="counter-box">
                            <div class="counter-no counter">
                                450
                            </div>
                            <div class="counter-label">病人</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--=========== End Counter SECTION ================-->

<!--=========== BEGAIN Doctors SECTION ================-->
<section id="meetDoctors">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="meetDoctors-area">
                    <!-- Start Service Title -->
                    <div class="section-heading">
                        <h2>Meet Our Doctors</h2>
                        <div class="line"></div>
                    </div>
                    <div class="doctors-area">
                        <ul class="doctors-nav">
                            <li>
                                <div class="single-doctor">
                                    <a class="tdoctor" href="#" data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z">
                                        <figure>
                                            <img src="images/doctor-1.jpg" />
                                            <svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,218 0,0 180,0 z"/></svg>
                                            <figcaption>
                                                <h2>Dr. Yvonne Cadiline</h2>
                                                <p>护士长</p>
                                                <button>View</button>
                                            </figcaption>
                                        </figure>
                                    </a>
                                    <div class="single-doctor-social">
                                        <a href="#"><span class="fa fa-facebook"></span></a>
                                        <a href="#"><span class="fa fa-twitter"></span></a>
                                        <a href="#"><span class="fa fa-google-plus"></span></a>
                                        <a href="#"><span class="fa fa-linkedin"></span></a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single-doctor">
                                    <div class="single-doctor">
                                        <a class="tdoctor" href="#" data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z">
                                            <figure>
                                                <img src="images/doctor-2.jpg" />
                                                <svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,218 0,0 180,0 z"/></svg>
                                                <figcaption>
                                                    <h2>DR. Jack Johnson</h2>
                                                    <p>主治医生</p>
                                                    <button>View</button>
                                                </figcaption>
                                            </figure>
                                        </a>
                                        <div class="single-doctor-social">
                                            <a href="#"><span class="fa fa-facebook"></span></a>
                                            <a href="#"><span class="fa fa-twitter"></span></a>
                                            <a href="#"><span class="fa fa-google-plus"></span></a>
                                            <a href="#"><span class="fa fa-linkedin"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single-doctor">
                                    <div class="single-doctor">
                                        <a class="tdoctor" href="#" data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z">
                                            <figure>
                                                <img src="images/doctor-3.jpg" />
                                                <svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,218 0,0 180,0 z"/></svg>
                                                <figcaption>
                                                    <h2>Dr. Vanessa Smouic</h2>
                                                    <p>副院长</p>
                                                    <button>View</button>
                                                </figcaption>
                                            </figure>
                                        </a>
                                        <div class="single-doctor-social">
                                            <a href="#"><span class="fa fa-facebook"></span></a>
                                            <a href="#"><span class="fa fa-twitter"></span></a>
                                            <a href="#"><span class="fa fa-google-plus"></span></a>
                                            <a href="#"><span class="fa fa-linkedin"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single-doctor">
                                    <div class="single-doctor">
                                        <a class="tdoctor" href="#" data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z">
                                            <figure>
                                                <img src="images/doctor-5.jpg" />
                                                <svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,218 0,0 180,0 z"/></svg>
                                                <figcaption>
                                                    <h2>Dr. David Gresshoff</h2>
                                                    <p>院长</p>
                                                    <button>View</button>
                                                </figcaption>
                                            </figure>
                                        </a>
                                        <div class="single-doctor-social">
                                            <a href="#"><span class="fa fa-facebook"></span></a>
                                            <a href="#"><span class="fa fa-twitter"></span></a>
                                            <a href="#"><span class="fa fa-google-plus"></span></a>
                                            <a href="#"><span class="fa fa-linkedin"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single-doctor">
                                    <a class="tdoctor" href="#" data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z">
                                        <figure>
                                            <img src="images/doctor-1.jpg" />
                                            <svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,218 0,0 180,0 z"/></svg>
                                            <figcaption>
                                                <h2>Dr. Yvonne Cadiline</h2>
                                                <p>行政副院长</p>
                                                <button>View</button>
                                            </figcaption>
                                        </figure>
                                    </a>
                                    <div class="single-doctor-social">
                                        <a href="#"><span class="fa fa-facebook"></span></a>
                                        <a href="#"><span class="fa fa-twitter"></span></a>
                                        <a href="#"><span class="fa fa-google-plus"></span></a>
                                        <a href="#"><span class="fa fa-linkedin"></span></a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single-doctor">
                                    <div class="single-doctor">
                                        <a class="tdoctor" href="#" data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z">
                                            <figure>
                                                <img src="images/doctor-2.jpg" />
                                                <svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,218 0,0 180,0 z"/></svg>
                                                <figcaption>
                                                    <h2>DR. Jack Johnson</h2>
                                                    <p>办公室主任</p>
                                                    <button>View</button>
                                                </figcaption>
                                            </figure>
                                        </a>
                                        <div class="single-doctor-social">
                                            <a href="#"><span class="fa fa-facebook"></span></a>
                                            <a href="#"><span class="fa fa-twitter"></span></a>
                                            <a href="#"><span class="fa fa-google-plus"></span></a>
                                            <a href="#"><span class="fa fa-linkedin"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single-doctor">
                                    <div class="single-doctor">
                                        <a class="tdoctor" href="#" data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z">
                                            <figure>
                                                <img src="images/doctor-3.jpg" />
                                                <svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,218 0,0 180,0 z"/></svg>
                                                <figcaption>
                                                    <h2>Dr. Vanessa Smouic</h2>
                                                    <p>医务科科长</p>
                                                    <button>View</button>
                                                </figcaption>
                                            </figure>
                                        </a>
                                        <div class="single-doctor-social">
                                            <a href="#"><span class="fa fa-facebook"></span></a>
                                            <a href="#"><span class="fa fa-twitter"></span></a>
                                            <a href="#"><span class="fa fa-google-plus"></span></a>
                                            <a href="#"><span class="fa fa-linkedin"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single-doctor">
                                    <div class="single-doctor">
                                        <a class="tdoctor" href="#" data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z">
                                            <figure>
                                                <img src="images/doctor-5.jpg" />
                                                <svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,218 0,0 180,0 z"/></svg>
                                                <figcaption>
                                                    <h2>Dr. David Gresshoff</h2>
                                                    <p>副主任医师</p>
                                                    <button>View</button>
                                                </figcaption>
                                            </figure>
                                        </a>
                                        <div class="single-doctor-social">
                                            <a href="#"><span class="fa fa-facebook"></span></a>
                                            <a href="#"><span class="fa fa-twitter"></span></a>
                                            <a href="#"><span class="fa fa-google-plus"></span></a>
                                            <a href="#"><span class="fa fa-linkedin"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--=========== End Doctors SECTION ================-->

<!--=========== BEGAIN Testimonial SECTION ================-->
<section id="testimonial">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="testimonial-area">
                    <!-- Start Service Title -->
                    <div class="section-heading">
                        <h2>What our patients said</h2>
                        <div class="line"></div>
                    </div>
                    <div class="testimonial-area">
                        <ul class="testimonial-nav">
                            <li>
                                <div class="single-testimonial">
                                    <div class="testimonial-img">
                                        <img src="images/patients-3.jpg" alt="img">
                                    </div>
                                    <div class="testimonial-cotent">
                                        <p class="testimonial-parg">何似神医胜华佗，亮剑一挥斩病魔</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single-testimonial">
                                    <div class="testimonial-img">
                                        <img src="images/patients-1.jpg" alt="img">
                                    </div>
                                    <div class="testimonial-cotent">
                                        <p class="testimonial-parg">医术精湛，华佗在世。手到病除，优质服务</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single-testimonial">
                                    <div class="testimonial-img">
                                        <img src="images/patients-2.jpg" alt="img">
                                    </div>
                                    <div class="testimonial-cotent">
                                        <p class="testimonial-parg">医德高尚暖人心，医术精湛传四方</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--=========== End Testimonial SECTION ================-->


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
<script type="text/javascript">
    if(${message!=null}){
        alert("${message}");
    }
</script>
</html>
