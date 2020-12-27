<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>医生统计</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../../../../css/bootstrap.min.css">
<%--    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">--%>
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="../../../../css/font-awesome.min.css">
<%--    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">--%>
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
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

    <%--统计--%>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <%--统计--%>


</head>
<body>
<div class="page">
    <!-- Main Navbar-->
   <%-- <header class="header">
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
                        <div class="brand-text d-none d-lg-inline-block"><span>Eleven </span><strong>门诊</strong></div>
                        <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong></strong></div></a>
                        <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                    </div>
                    <li class="nav-item"><a href="login.html" class="nav-link logout"> <span class="d-none d-sm-inline">退出登录</span><i class="fa fa-sign-out"></i></a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
--%>




   <%-- <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <nav class="side-navbar">
            <!-- Sidebar Header-->
            <div class="sidebar-header d-flex align-items-center">
                <div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                &lt;%&ndash;<div class="title">
                    <h1 class="h4">${admin.role.roleName}</h1>
                    <p>${admin.adminRealName}</p>
                </div>&ndash;%&gt;
            </div>
            <!-- Sidebar Navidation Menus--><span class="heading">功能栏</span>

            <ul class="list-unstyled">
                <li class="active"><a href="admin/toAdminManager"> <i class="icon-home"></i>主页 </a></li>
                <li><a href="admin/findAllAdmin?role.roleId=8">
                    <i  class="icon-grid"></i>查看管理员信息</a></li>
                <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>科室管理 </a>
                    <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                        <li><a href="admin/showAllDept">一级科室管理</a></li>
                        <li><a href="admin/toAddDept">添加一级科室</a></li>
                    </ul>
                </li>
                <li><a href="#exampledropdownDropdown4" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>医生管理 </a>
                    <ul id="exampledropdownDropdown4" class="collapse list-unstyled ">
                        <li><a href="admin/showAllDeptFindDoctor">查看医生信息</a></li>
                    </ul>
                </li>
                <li><a href="#exampledropdownDropdown1" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>挂号员管理 </a>
                    <ul id="exampledropdownDropdown1" class="collapse list-unstyled ">
                        <li><a href="admin/findAllAdmin?role.roleId=2">查看挂号员信息</a></li>
                        <li><a href="admin/toAddAdmin?role.roleId=2">添加挂号员</a></li>
                    </ul>
                </li>
                <li><a href="#exampledropdownDropdown2" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>药剂师管理 </a>
                    <ul id="exampledropdownDropdown2" class="collapse list-unstyled ">
                        <li><a href="admin/findAllAdmin?role.roleId=3">查看药剂师信息</a></li>
                        <li><a href="admin/toAddAdmin?role.roleId=3">添加药剂师</a></li>
                    </ul>
                </li>
                <li><a href="#exampledropdownDropdown3" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>报表管理 </a>
                    <ul id="exampledropdownDropdown3" class="collapse list-unstyled ">
                        <li><a href="adminStatisticalDoctor/adminStatisticalDoctor">医生统计</a></li>
                        <li><a href="#">挂号统计</a></li>
                        <li><a href="#">药品统计</a></li>
                        <li><a href="#">检查统计</a></li>
                    </ul>
                </li>
            </ul>
            <br><br><br><br><br> <br><br><br><br><br>
        </nav>
--%>
        <div class="content-inner">
            <header class="page-header">
                <div class="container-fluid">
                    <h2 class="no-margin-bottom">查看医生统计</h2>
                </div>
            </header>
            <!-- LOGIN WRAPPER  -->
        <%--    <div class="breadcrumb-holder container-fluid">
            </div>--%>
            <div class="table-responsive">
                <div class="page-container">
                    <div class="mt-20">
            <div id="container" style="width: 800px; height: 600px; margin: 0 auto"></div>
            <script language="JavaScript">
                $(document).ready(function() {
                    var chart = {
                        type: 'bar'
                    };
                    var title = {
                        text: '各科室人数统计'
                    };
                    var subtitle = {
                        text: 'Source: Wikipedia.org'
                    };
                    var xAxis = {
                        categories: ['内科', '外科', '骨科', '儿科', '传染病科',
                            '妇产科', '男科', '精神心理科', '皮肤性病科', '中医科',
                            '肿瘤科', '康复医学科', '麻醉医学科', '营养科', '五官科',],
                        title: {
                            text: null
                        }
                    };
                    var yAxis = {
                        min: 0,
                        title: {
                            text: 'Population',
                            align: 'high'
                        },
                        labels: {
                            overflow: 'justify'
                        }
                    };
                    var tooltip = {
                        valueSuffix: ' millions'
                    };
                    var plotOptions = {
                        bar: {
                            dataLabels: {
                                enabled: true
                            }
                        }
                    };
                    var legend = {
                        layout: 'vertical',
                        align: 'right',
                        verticalAlign: 'top',
                        x: -40,
                        y: 100,
                        floating: true,
                        borderWidth: 1,
                        backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
                        shadow: true
                    };
                    var credits = {
                        enabled: false
                    };

                    var series= [{
                        name: '医生',
                        data: [${a1.doctorId},${a2.doctorId},${a3.doctorId},${a4.doctorId},${a5.doctorId}, ${a6.doctorId}, ${a7.doctorId}, ${a8.doctorId}, ${a9.doctorId},${a10.doctorId}, ${a11.doctorId}, ${a12.doctorId}, ${a13.doctorId}, ${a14.doctorId},${a15.doctorId}]
                    }, {
                        name: '主治医师',
                        data: [${a16.doctorId},${a17.doctorId},${a18.doctorId},${a19.doctorId}, ${a20.doctorId}, ${a21.doctorId}, ${a22.doctorId}, ${a23.doctorId},${a24.doctorId}, ${a25.doctorId}, ${a26.doctorId}, ${a27.doctorId}, ${a28.doctorId},${a29.doctorId}, ${a30.doctorId}]
                    },  {
                        name: '副主任医师',
                        data: [${a31.doctorId},${a32.doctorId},${a33.doctorId},${a34.doctorId}, ${a35.doctorId}, ${a36.doctorId}, ${a37.doctorId}, ${a38.doctorId},${a39.doctorId}, ${a40.doctorId}, ${a41.doctorId}, ${a42.doctorId}, ${a43.doctorId},${a44.doctorId}, ${a45.doctorId}]
                    }, {
                        name: '主任医师',
                        data: [${a46.doctorId},${a47.doctorId},${a48.doctorId},${a49.doctorId}, ${a50.doctorId}, ${a51.doctorId}, ${a52.doctorId}, ${a53.doctorId},${a54.doctorId}, ${a55.doctorId}, ${a56.doctorId}, ${a57.doctorId}, ${a58.doctorId},${a59.doctorId}, ${a60.doctorId}]
                    },{
                        name: '特邀专家',
                        data: [${a61.doctorId},${a62.doctorId},${a63.doctorId},${a64.doctorId}, ${a65.doctorId}, ${a66.doctorId}, ${a67.doctorId}, ${a68.doctorId},${a69.doctorId}, ${a70.doctorId}, ${a71.doctorId}, ${a72.doctorId}, ${a73.doctorId},${a74.doctorId}, ${a75.doctorId}]
                    }
                    ];

                    var json = {};
                    json.chart = chart;
                    json.title = title;
                    json.subtitle = subtitle;
                    json.tooltip = tooltip;
                    json.xAxis = xAxis;
                    json.yAxis = yAxis;
                    json.series = series;
                    json.plotOptions = plotOptions;
                    json.legend = legend;
                    json.credits = credits;
                    $('#container').highcharts(json);

                });
            </script>
                    </div>
                </div>
            </div>
            <!-- END LOGIN WRAPPER -->
        </div>

    <%--</div>--%>



</div>
<!-- JavaScript files-->
<script src="../../../../vendor/jquery/jquery.min.js"></script>
<script src="../../../../vendor/popper.js/umd/popper.min.js"> </script>
<script src="../../../../vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../../../../vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="../../../../vendor/chart.js/Chart.min.js"></script>
<script src="../../../../vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="../../../../js/charts-home.js"></script>
<!-- Main File-->
<script src="js/front.js"></script>

</body>
</html>