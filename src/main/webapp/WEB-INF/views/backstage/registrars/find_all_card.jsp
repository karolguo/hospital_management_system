<%--
  Created by IntelliJ IDEA.
  User: ft
  Date: 2019/9/27
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<base href="${basePath}"/>
<head>
    <title>医疗卡操作</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
        <div class="content-inner">

            <div class="card-header d-flex align-items-center">
                <h3 class="h4">查看所有用户的医疗卡信息</h3>
            </div>
            <div class="card-body">
                <table class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
                    <thead>
                    <tr>
                        <th align="center" width="214px">序号</th>
                        <th align="center" width="214px">姓名</th>
                        <th align="center" width="214px">性别</th>
                        <th align="center" width="214px">身份证号</th>
                        <th align="center" width="214px">余额</th>
                        <th align="center" width="214px">电话</th>
                        <th align="center" width="214px">状态</th>
                        <td align="center" width="214px">操作</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${cardList}" var="c" varStatus="status">
                        <tr>
                            <td align="center">${status.index+1}</td>
                            <td align="center">${c.userName}</td>
                            <td align="center">${c.userSex}</td>
                            <td align="center">${c.userId}</td>
                            <td align="center">${c.money}</td>
                            <td align="center">${c.userTel}</td>
                            <td align="center">
                                <c:if test="${c.cardStatus==0}">正常</c:if>
                                <c:if test="${c.cardStatus==1}">挂失</c:if>
                            </td>
                            <td align="center">
                               <%-- <a href="doctor/checkRegStatus?regId=${r.regId}&doctorId=${sessionScope.doctor.doctorId}">叫号</a>--%>

                                <a href="registrars/findCardByUserId?userId=${c.userId}">充值</a>
                                <a href="card/updateCardStatus?cardStatus=1&userId=${c.userId}">挂失</a>
                                <a href="card/updateCardStatus?cardStatus=0&userId=${c.userId}">解封</a>
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
<script src="vendor/popper.js/umd/popper.min.js"> </script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="js/charts-home.js"></script>
<!-- Main File-->
<script src="js/front.js"></script>
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
