<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<base href="${basePath}"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
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
                        <div class="brand-text d-none d-lg-inline-block"><span>Eleven </span><strong>门诊</strong></div>
                        <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div></a>
                        <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                    </div>
                    <!-- Navbar Menu -->


                    <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                        <!-- Logout    -->
                        <li class="nav-item"><a href="login.html" class="nav-link logout"> <span class="d-none d-sm-inline">Logout</span><i class="fa fa-sign-out"></i></a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>





    <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <nav class="side-navbar">
            <!-- Sidebar Header-->
            <div class="sidebar-header d-flex align-items-center">
                <div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                <div class="title">
                    <h1 class="h4">${admin.role.roleName}</h1>
                    <p>${admin.adminRealName}</p >
                </div>
            </div>
            <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
            <ul class="list-unstyled">
                <li class="active"><a href="index.html"> <i class="icon-home"></i>Home </a></li>
                <li><a href="find_drug_medical"> <i class="icon-grid"></i>查询药单 </a></li>
                <li><a href="find_stock"> <i class="fa fa-bar-chart"></i>药品库存查询 </a></li>
                <li><a href="find_critical_stock"> <i class="icon-interface-windows"></i>库存紧急查询 </a></li>

            </ul>
        </nav>
        <%--侧拉框结束--%>

        <div class="content-inner">



            <%--<form action="find_drug">
                <input type="text" placeholder="用户" name="userId">
                <input type="submit" value="查询">
            </form>--%>



           <%-- <div class="form-group row" style="margin-left: 100px;margin-top: 200px">
                <div class="col-sm-9">
                    <div class="form-group">
                        <div class="input-group">


                            <input type="text" class="form-control" id="userId" placeholder="请输入要查询的用户" name="userId">
                            <div class="input-group-append">
                               <button type="submit"  class="btn btn-primary">Go!</button>
                            </div>


                        </div>
                    </div>
                </div>
            </div>--%>
                <div class="card-header d-flex align-items-center">
                    <h3 class="h4">查看用户药单</h3>
                </div>
                <div class="form-group row">
                <div class="card-body">
                    <form action="findListStock" class="form-inline" style="float:left;margin-left: 20%;margin-top: 200px">
                        <div class="form-group">
                            <input id="inlineFormInputGroup" name="userId" type="text" placeholder="请输入要查询的用户" class="mr-3 form-control">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">查询</button>
                        </div>
                    </form>
                </div>
                </div>


        </div>


    </div>

</div>




<!-- JavaScript files-->
<script type="text/javascript" src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<%--<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>--%>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper.js/umd/popper.min.js"> </script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="js/charts-home.js"></script>
<!-- Main File-->
<script src="js/front.js"></script>


<%--<script type="text/javascript">
    /*function getfind(a) {
        alert("进入")
        var userId = 'Key=' + document.getElementById("userId").value;
        alert(userId)
        a.href = 'find_drug?' + userId;
    }*/
    $(function () {
        alert("进入")
        $("#find").click(function () {
            var userId = $("#userId").val();
            alert(userId)
            $.post("find_drug",$("#userId").serialize(),function (json) {
                console.log(json);
                $("#medical").html(json)
                window.location.href="WEB-INF/views/backstage/drug/drug_medical.jsp"
            })
        })
    })
</script>--%>

</body>
</html>