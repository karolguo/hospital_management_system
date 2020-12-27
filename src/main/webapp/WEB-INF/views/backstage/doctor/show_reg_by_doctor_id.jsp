<%--
  Created by IntelliJ IDEA.
  User: gfh16
  Date: 2019/9/22
  Time: 13:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<base href="${basePath}"/>
<html>
<head>
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
    <!--分页-->
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.8/iconfont.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/h-ui.admin/css/style.css"/>
    <!--分页-->

    <script type="text/javascript">
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
            <%--<div class="search-box">
                <button class="dismiss"><i class="icon-close"></i></button>
                <form id="searchForm" action="#" role="search">
                    <input type="search" placeholder="What are you looking for..." class="form-control">
                </form>
            </div>--%>
            <div class="container-fluid">
                <div class="navbar-holder d-flex align-items-center justify-content-between">
                    <!-- Navbar Header-->
                    <div class="navbar-header">
                        <!-- Navbar Brand --><a href="doctor/toDoctorIndex" class="navbar-brand d-none d-sm-inline-block">
                        <div class="brand-text d-none d-lg-inline-block"><span>Eleven </span><strong>门诊</strong></div>
                        <%--<div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div>--%>
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
                <h3 class="h4">查看挂号病人信息</h3>
            </div>
            <div class="card-body">
                <%--<div class="table-responsive">--%>

                    <table class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
                        <thead>
                        <tr>
                            <th align="center" width="250px">序号</th>
                            <th align="center" width="250px">病人名</th>
                            <th align="center" width="250px">病人身份证</th>
                            <th align="center" width="250px">病人性别</th>
                            <th align="center" width="250px">挂号科室</th>
                            <th align="center" width="250px">挂号时间</th>
                            <td align="center" width="250px">操作</td>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${regList}" var="r" varStatus="status">
                            <tr>
                                <td align="center">${status.index+1}</td>
                                <td align="center">${r.card.userName}</td>
                                <td align="center">${r.card.userId}</td>
                                <td align="center">${r.card.userSex}</td>
                                <td align="center">${r.dept.deptName}</td>
                                <td align="center">${r.regDate}</td>
                                <td align="center">
                                    <a href="doctor/checkRegStatus?regId=${r.regId}&doctorId=${sessionScope.doctor.doctorId}">叫号</a>
                                    <a href="doctor/cancelReg?regId=${r.regId}&doctorId=${sessionScope.doctor.doctorId}">取消号</a>

                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

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
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->


<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript"
        src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript"
        src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
    $(function () {
        $('.table-sort').dataTable({
            "aaSorting": [[1, "desc"]],//默认第几个排序
            "bStateSave": true,//状态保存
            "pading": false,
            "aLengthMenu": [5, 10, 20],
            "aoColumnDefs": [
                //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
                {"orderable": false, "aTargets": [0, 3]}// 不参与排序的列
            ]
        })
    })
</script>

</body>
</html>
