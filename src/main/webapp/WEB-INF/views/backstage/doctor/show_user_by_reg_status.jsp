<%--
  Created by IntelliJ IDEA.
  User: gfh16
  Date: 2019/9/22
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<base href="${basePath}"/>
<html>
<head>
    <base target="_self">
    <title>就诊</title>
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


    <script language="JavaScript">

        function Minimize1(userId) {
            window.open("doctor/toWindows1?userId=" + userId + "", "window_name", 'top=300,left=400,width=700,height=500,menubar=no,toolbar=no,location=no,directories=no,status=no,scrollbars=no,resizable=no');
        }

        function Minimize2(userId) {
            window.open("doctor/toWindows2?userId=" + userId + "", "window_name", 'top=300,left=400,width=700,height=500,menubar=no,toolbar=no,location=no,directories=no,status=no,scrollbars=no,resizable=no');
        }
        if(${requestScope.res!=null}){
            alert("${requestScope.res}");
        }
    </script>
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
                        <!-- Navbar Brand --><a href="doctor/toDoctorIndex"
                                                class="navbar-brand d-none d-sm-inline-block">
                        <div class="brand-text d-none d-lg-inline-block"><span>Eleven </span><strong>门诊</strong></div>
                        <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div>
                    </a>
                        <!-- Toggle Button--><a id="toggle-btn" href="#"
                                                class="menu-btn active"><span></span><span></span><span></span></a>
                    </div>
                    <!-- Navbar Menu -->
                    <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                        <!-- Search-->
                        <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i
                                class="icon-search"></i></a></li>
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
        </nav>

        <div class="content-inner">
            <!-- Page Header-->
            <%--<header class="page-header">
                <div class="container-fluid">
                    <h2 class="no-margin-bottom">就诊</h2>
                </div>
            </header>

            <div class="breadcrumb-holder container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item">主页</li>
                    <li class="breadcrumb-item active">就诊</li>
                </ul>
            </div>--%>

            <div class="card-header d-flex align-items-center">
                <h3 class="h4">就诊</h3>
            </div>
            <div class="card-body">
                <%--<div class="table-responsive">--%>

                    <%--<table class="table table-striped table-hover">--%>
                        <%--<thead>
                        <tr>
                            <td>序号</td>
                            <td>病人名</td>
                            <td>病人性别</td>
                            <td>医嘱</td>
                            <td>挂号时间</td>
                            <td>检查项目</td>
                            <td>药品</td>
                            <td>操作</td>
                        </tr>
                        </thead>
                        <tbody>--%>
                        <form class="form-horizontal" action="doctor/updateMedRecord" method="post">
                            <input type="hidden" value="${sessionScope.doctor.doctorId}" name="doctorId">
                                <input name="userId" type="hidden" value="${regList.card.userId}">
                            <input name="regId" type="hidden" value="${regList.regId}">

                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">病人名</label>
                                <div class="col-sm-9">
                                    <input type="text" readonly="readonly" value="${regList.card.userName}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">病人性别</label>
                                <div class="col-sm-9">
                                    <input type="text" readonly="readonly" value="${regList.card.userSex}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">挂号时间</label>
                                <div class="col-sm-9">
                                    <input type="text" readonly="readonly" value="${regList.regDate}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">医嘱</label>
                                <div class="col-sm-9">
                                    <textarea name="medOrder" rows="4" placeholder="医嘱"></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">检查项目</label>
                                <div class="col-sm-9">
                                    <c:forEach items="${cList}" var="c">
                                        <input name="check" type="hidden" value="${c.checkId}">
                                        <input name="checkPrice" type="hidden" value="${c.checkPrice}">
                                        ${c.checkName}&nbsp;
                                        <a href="doctor/toClearCheck?checkId=${c.checkId}&doctorId=${sessionScope.doctor.doctorId}">取消</a><br>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">药品</label>
                                <div class="col-sm-9">
                                    <c:forEach items="${dList}" var="d">
                                        <input name="drug" type="hidden" value="${d.drugId}">
                                        <input name="drugNum" type="hidden" value="${d.drugNum}">
                                        ${d.drugName}×${d.drugNum}&nbsp;
                                        <a href="doctor/toClearDrug?drugId=${d.drugId}&doctorId=${sessionScope.doctor.doctorId}">取消</a><br>
                                    </c:forEach>
                                </div>
                            </div>



                            <%--<c:forEach items="${regList}" var="r" varStatus="status">
                                <input type="hidden" value="${r.regId}" name="regId">
                                <tr>
                                    <td>${status.index+1}</td>
                                    <td>${r.card.userName}</td>
                                    <td>${r.card.userSex}</td>
                                    <td>
                                        <textarea name="medOrder" rows="4" placeholder="医嘱"></textarea>
                                    </td>
                                    <td>${r.regDate}</td>
                                    <td>
                                        <c:forEach items="${cList}" var="c">
                                            <input name="check" type="hidden" value="${c.checkId}">
                                            <input name="checkPrice" type="hidden" value="${c.checkPrice}">
                                            ${c.checkName}&nbsp;
                                            <a href="doctor/toClearCheck?checkId=${c.checkId}&doctorId=${sessionScope.doctor.doctorId}">取消</a><br>
                                        </c:forEach>

                                    </td>
                                    <td>
                                        <c:forEach items="${dList}" var="d">
                                            <input name="drug" type="hidden" value="${d.drugId}">
                                            <input name="drugNum" type="hidden" value="${d.drugNum}">
                                            ${d.drugName}×${d.drugNum}&nbsp;
                                            <a href="doctor/toClearDrug?drugId=${d.drugId}&doctorId=${sessionScope.doctor.doctorId}">取消</a><br>
                                        </c:forEach>

                                    </td>
                                    <input name="userId" type="hidden" value="${r.card.userId}">
                                    <input name="regId" type="hidden" value="${r.regId}">--%>
                                        <%--<input name="mrId" type="hidden" value="${}">--%>
                            <div class="form-group row">
                                <div class="col-sm-4 offset-sm-3">
                                    <a href="JavaScript:onClick=Minimize1(userId='${regList.card.userId}')">选择检查项目</a>&nbsp;
                                    <a href="JavaScript:onClick=Minimize2(userId='${regList.card.userId}')">开药</a>&nbsp;
                                    <input class="btn btn-primary" type="submit" value="就诊完毕">
                                </div>
                            </div>
                                    <%--<td><a href="JavaScript:onClick=Minimize1(userId='${r.card.userId}')">选择检查项目</a>&nbsp;
                                        <a href="JavaScript:onClick=Minimize2(userId='${r.card.userId}')">开药</a>&nbsp;
                                        <input type="submit" value="就诊完毕">
                                    </td>
                                </tr>--%>

                            <%--</c:forEach>--%>
                        </form>
                        <%--</tbody>--%>
                   <%-- </table>--%>

                <%--</div>--%>
            </div>


        </div>
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
<%--<h2>查看就诊病人信息</h2>
<form>
<table>
    <tr>
        <td>序号</td>
        <td>病人名</td>
        <td>病人性别</td>
        <td>医嘱</td>
        <td>挂号时间</td>
        <td>病例</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${regList}" var="r" varStatus="status">
        <tr>
            <td>${status.index+1}</td>
            <td>${r.card.userName}</td>
            <td>${r.card.userSex}</td>
            <td>
                <textarea name="medOrder" rows="4" placeholder="医嘱"></textarea>
            </td>
            <td>${r.regDate}</td>
            <td><a href="#">上传病例</a></td>
            <td><a href="JavaScript:onClick=Minimize()">选择检查项目</a>&nbsp;<a href="#">开药</a>&nbsp;<input type="submit" value="就诊完毕"></td>
        </tr>
    </c:forEach>
</table>
</form>--%>


</body>
</html>
