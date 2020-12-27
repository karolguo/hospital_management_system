<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<base href="${basePath}"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>个人药单</title>
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


    <%--分页--%>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/h-ui.admin/css/style.css" />
    <%-- 分页--%>



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
            <div class="card-header d-flex align-items-center">
                <h3 class="h4">查看用户药单</h3>
            </div>




            <div class="card-body">
                <div class="table-responsive">
<%--
                    <table class="table table-striped table-hover">
--%>
    <table class=" table table-striped table-hover  table-sort <%--table-responsive table-bordered table-bg table-hover--%>">
    <thead>
                        <tr>
                            <th>药品名字</th>
                            <th>药品数量</th>
                            <th>药品单价</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:set value="0" var="sum" />
                        <c:forEach items="${medical}" var="medical">
                            <tr>
                                <td>${medical.drugName}</td>
                                <td>${medical.drugOrderNum}</td>
                                <td>${medical.drugPrice}</td>
                                <c:set value="${sum +medical.drugOderPrice}" var="sum" />
                            </tr>
                        </c:forEach>
                        <tr>
                            <td></td>
                            <td>
                                药单编号：${medical[0].mrId}<br>
                                开药医生：${medical[0].doctorName}<br>
                                总价：<fmt:formatNumber type="number" value="${sum}" pattern="0.00" maxFractionDigits="2"/><br>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <c:choose>
                                    <c:when test="${medical[0].drugOrderStatus==1 }">
                                        待取
                                    </c:when>
                                    <c:when test="${medical[0].drugOrderStatus==2 }">
                                        已取
                                    </c:when>
                                    <c:otherwise>
                                        作废
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <%--<td>
                                <a href="delDrug?mrId=${medical[0].mrId}">删除药单</a>
                            </td>--%>
                            <td></td>
                            <td>
                                <c:if test="${medical[0].drugOrderStatus==1}">
                                    <a href="checkoutDrug?mrId=${medical[0].mrId}">出库药品</a>
                                </c:if>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

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




<%--分页--%>
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript"
        src="${pageContext.request.contextPath}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
    $(function () {
        $('.table-sort').dataTable({
            "aaSorting": [[ 1, "desc" ]],//默认第几个排序
            "bStateSave": true,//状态保存
            "pading":false,
            "aLengthMenu" : [ 10, 15, 20] ,
            "aoColumnDefs": [
                //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
                {"orderable":false,"aTargets":[0,3]}// 不参与排序的列
            ]
        })})
</script>

</body>
</html>