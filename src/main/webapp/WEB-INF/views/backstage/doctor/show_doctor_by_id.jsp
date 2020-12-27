<%--
  Created by IntelliJ IDEA.
  User: gfh16
  Date: 2019/9/20
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<base href="${basePath}"/>
<html>
<head>
    <title>修改医生个人信息</title>
    <title>查看挂号病人</title>
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
                        <!-- Navbar Brand --><a href="doctor/toDoctorIndex" class="navbar-brand d-none d-sm-inline-block">
                        <div class="brand-text d-none d-lg-inline-block"><span>Eleven </span><strong>门诊</strong></div>
                        <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div>
                    </a>
                        <!-- Toggle Button--><%--<a id="toggle-btn" href="#"
                                                class="menu-btn active"><span></span><span></span><span></span></a>--%>
                    </div>
                    <!-- Navbar Menu -->
                    <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                        <!-- Search-->
                        <%--<li class="nav-item d-flex align-items-center"><a id="search" href="#"><i
                                class="icon-search"></i></a></li>--%>
                        <!-- Notifications-->
                        <%-- <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">12</span></a>
                             <ul aria-labelledby="notifications" class="dropdown-menu">
                                 <li><a rel="nofollow" href="#" class="dropdown-item">
                                     <div class="notification">
                                         <div class="notification-content"><i class="fa fa-envelope bg-green"></i>You have 6 new messages </div>
                                         <div class="notification-time"><small>4 minutes ago</small></div>
                                     </div></a></li>
                                 <li><a rel="nofollow" href="#" class="dropdown-item">
                                     <div class="notification">
                                         <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                         <div class="notification-time"><small>4 minutes ago</small></div>
                                     </div></a></li>
                                 <li><a rel="nofollow" href="#" class="dropdown-item">
                                     <div class="notification">
                                         <div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>
                                         <div class="notification-time"><small>4 minutes ago</small></div>
                                     </div></a></li>
                                 <li><a rel="nofollow" href="#" class="dropdown-item">
                                     <div class="notification">
                                         <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                         <div class="notification-time"><small>10 minutes ago</small></div>
                                     </div></a></li>
                                 <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all notifications                                            </strong></a></li>
                             </ul>
                         </li>
                         <!-- Messages                        -->
                         <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">10</span></a>
                             <ul aria-labelledby="notifications" class="dropdown-menu">
                                 <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                                     <div class="msg-profile"> <img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                     <div class="msg-body">
                                         <h3 class="h5">Jason Doe</h3><span>Sent You Message</span>
                                     </div></a></li>
                                 <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                                     <div class="msg-profile"> <img src="img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                     <div class="msg-body">
                                         <h3 class="h5">Frank Williams</h3><span>Sent You Message</span>
                                     </div></a></li>
                                 <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                                     <div class="msg-profile"> <img src="img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                     <div class="msg-body">
                                         <h3 class="h5">Ashley Wood</h3><span>Sent You Message</span>
                                     </div></a></li>
                                 <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>Read all messages   </strong></a></li>
                             </ul>
                         </li>--%>
                        <li class="nav-item"><a href="doctor/findDoctorById?doctorId=${sessionScope.doctor.doctorId}"
                                                class="nav-link logout"> <span class="d-none d-sm-inline">查看个人信息</span></a>
                        </li>
                        <!-- 退出登陆    -->
                        <li class="nav-item"><a href="doctor/toDoctorLogin" class="nav-link logout"> <span
                                class="d-none d-sm-inline">退出登陆</span><i class="fa fa-sign-out"></i></a></li>
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
                    <div class="avatar">
                        <img class="img-fluid rounded-circle" style="height: 50px;width: 50px;"
                             src='${pageContext.request.contextPath}/${sessionScope.doctor.doctorPic}'>
                    </div>
                    <div class="title">
                        <h1 class="h4">${sessionScope.doctor.doctorName}</h1>
                        <p>${sessionScope.doctor.job.jobName}</p>
                    </div>
                </div>
                <!-- Sidebar Navidation Menus--><span class="heading">主页</span>
                <ul class="list-unstyled">
                    <li class="active"><a href="doctor/toDoctorIndex"> <i class="icon-home"></i>主页 </a></li>
                    <%--<li><a href="tables.html"> <i class="icon-grid"></i>Tables </a></li>
                    <li><a href="charts.html"> <i class="fa fa-bar-chart"></i>Charts </a></li>
                    <li><a href="forms.html"> <i class="icon-padnote"></i>Forms </a></li>--%>
                    <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i
                            class="icon-interface-windows"></i>就诊</a>
                        <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                            <li><a href="doctor/findRegByDoctorId?doctorId=${sessionScope.doctor.doctorId}">查看排号病人</a>
                            </li>
                            <li><a href="doctor/findUserByRegStatus?doctorId=${sessionScope.doctor.doctorId}">查看就诊病人</a>
                            </li>
                        </ul>
                    </li>
                    <%--<li><a href="login.html"> <i class="icon-interface-windows"></i>Login page </a></li>--%>
                </ul>
                <%--<span class="heading">Extras</span>
                <ul class="list-unstyled">
                    <li> <a href="#"> <i class="icon-flask"></i>Demo </a></li>
                    <li> <a href="#"> <i class="icon-screen"></i>Demo </a></li>
                    <li> <a href="#"> <i class="icon-mail"></i>Demo </a></li>
                    <li> <a href="#"> <i class="icon-picture"></i>Demo </a></li>
                </ul>--%>
            </nav>

            <div class="content-inner">
                <div class="card-header d-flex align-items-center">
                    <h3 class="h4">修改个人信息</h3>
                </div>
                <div class="card-body">
                    <form class="form-horizontal" action="doctor/updateDoctor" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="doctorId" value="${doctor.doctorId}">
                        <%--头像--%>
                        <div class="form-group row">
                            <label for="fileInput" class="col-sm-3 form-control-label">我的头像</label>
                            <div class="col-sm-9">
                                <input id="fileInput" type="file" class="form-control-file" name="file" placeholder="头像" accept="image/gif, image/jpeg, image/png, image/jpg"><img style="height: 50px;width: 50px;" src='${pageContext.request.contextPath}/${doctor.doctorPic}'>

                            </div>
                        </div>


                        <div class="row">
                            <label class="col-sm-3 form-control-label">我的信息</label>
                            <div class="col-sm-9">
                                <div class="form-group-material">
                                    <input id="register-username" type="text" required class="input-material" name="doctorName" value="${doctor.doctorName}" readonly="readonly">
                                    <%--<label for="register-username" class="label-material">我的姓名</label>--%>
                                </div>
                                <div class="form-group-material">
                                    <input id="register-password" type="password" required class="input-material" name="doctorPwd" value="${doctor.doctorPwd}" >
                                    <%--<label for="register-password" class="label-material">我的密码</label>--%>
                                </div>
                                <div class="form-group-material">
                                    <textarea id="register-info" name="doctorInfo" rows="4" placeholder="${doctor.doctorInfo}"></textarea>
                                    <%--<label for="register-info" class="label-material">我的简介</label>--%>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-4 offset-sm-3">
                                <input type="submit" class="btn btn-primary" value="修改">
                            </div>
                        </div>
                    </form>
                </div>



            </div>

            <!-- JavaScript files-->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/popper.js/umd/popper.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
            <script src="vendor/jquery.cookie/jquery.cookie.js"></script>
            <script src="vendor/chart.js/Chart.min.js"></script>
            <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
            <script src="js/charts-home.js"></script>
            <!-- Main File-->
            <script src="../../../../js/front.js"></script>
            <%--<form action="updateDoctor" method="post" enctype="multipart/form-data">
                <input type="hidden" name="doctorId" value="${doctor.doctorId}">
                我的照片：<input type="file" name="file" placeholder="头像" accept="image/gif, image/jpeg, image/png, image/jpg" ><img style="height: 50px;width: 50px;" src='${pageContext.request.contextPath}/${doctor.doctorPic}'><br>
                我的姓名：<input type="text" name="doctorName" value="${doctor.doctorName}" readonly="readonly"><br>
                我的密码：<input type="text" name="doctorPwd" value="${doctor.doctorPwd}" required="required"><br>
                我的简介：<input type="text" name="doctorInfo" value="${doctor.doctorInfo}"><br>
                <input type="submit" value="修改">
            </form>--%>
</body>

</html>
