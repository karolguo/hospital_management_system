<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<base href="${basePath}"/>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>管理员管理页面</title>
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
                        <!-- Navbar Brand --><a href="admin/toAdminManager" class="navbar-brand d-none d-sm-inline-block">
                        <div class="brand-text d-none d-lg-inline-block"><span>Eleven </span><strong>门诊</strong></div>
                        <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong></strong></div></a>
                        <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                    </div>
                    <!-- Navbar Menu -->
                    <%-- <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                         <!-- Search-->
                         <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li>
                         <!-- Notifications-->
                         <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">12</span></a>
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
                         </li>
                         <!-- Languages dropdown    -->
                         <li class="nav-item dropdown"><a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle"><img src="img/flags/16/GB.png" alt="English"><span class="d-none d-sm-inline-block">English</span></a>
                             <ul aria-labelledby="languages" class="dropdown-menu">
                                 <li><a rel="nofollow" href="#" class="dropdown-item"> <img src="img/flags/16/DE.png" alt="English" class="mr-2">German</a></li>
                                 <li><a rel="nofollow" href="#" class="dropdown-item"> <img src="img/flags/16/FR.png" alt="English" class="mr-2">French                                         </a></li>
                             </ul>
                         </li>--%>
                        <!-- Logout    -->
                        <li class="nav-item"><a href="login.jsp" class="nav-link logout"> <span class="d-none d-sm-inline">退出登录</span><i class="fa fa-sign-out"></i></a></li>
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
                <%--<div class="title">
                    <h1 class="h4">${admin.role.roleName}</h1>
                    <p>${admin.adminRealName}</p>
                </div>--%>
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
                        <li><a href="adminStatisticalDoctor/adminLookMoney">门诊收入比例</a></li>
                    </ul>
                </li>
            </ul>
            <br><br><br><br><br> <br><br><br><br><br>
        <%--          <span class="heading">Extras</span>
                      <ul class="list-unstyled">
                          <li> <a href="#"> <i class="icon-flask"></i>Demo </a></li>
                          <li> <a href="#"> <i class="icon-screen"></i>Demo </a></li>
                          <li> <a href="#"> <i class="icon-mail"></i>Demo </a></li>
                          <li> <a href="#"> <i class="icon-picture"></i>Demo </a></li>
                      </ul>--%>
        </nav>

        <div class="content-inner">
            <header class="page-header">
                <div class="container-fluid">
                    <h2 class="no-margin-bottom">查看管理员信息</h2>
                </div>
            </header>
            <!-- LOGIN WRAPPER  -->
            <div class="breadcrumb-holder container-fluid">
            </div>
            <div class="table-responsive">
                <div class="page-container">
                    <div class="mt-20">
                        <div class="card-body">
                <table class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
                    <thead>
                    <tr>
                        <td align="center" width="220">id</td>
                        <td align="center" width="220">管理员账号</td>
                        <td align="center" width="220">管理员密码</td>
                        <td align="center" width="220">管理员姓名</td>
                        <td align="center" width="220">管理员权限</td>
                        <td align="center" width="220">管理员状态</td>
                        <td align="center" width="220">操作</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${adminList}" var="li" varStatus="status">
                        <tr>
                        <td align="center" width="220">${status.index+1}</td>
                        <td align="center" width="220">${li.adminLoginName}</td>
                        <td align="center" width="220">${li.adminLoginPwd}</td>
                        <td align="center" width="220">${li.adminRealName}</td>
                        <td align="center" width="220">${li.role.roleName}</td>
                        <td align="center" width="220"><c:choose>
                            <c:when test="${li.adminStatus==1}">正常运作</c:when>
                            <c:otherwise>账号锁定</c:otherwise>
                        </c:choose></td>
                        <td align="center" width="220">
                        <c:choose >
                            <c:when test="${li.role.roleId==8}">无权限操作</c:when>
                            <c:otherwise>
                                <form  action="admin/findAdminById" >
                                    <c:choose>
                                        <c:when test="${li.adminStatus==1}">
                                            <input id="str" name="adminId" value="${li.adminId}" type="hidden"/>
                                            <input id="str" name="adminStatus" value="0" type="hidden"/>

                                            <div class="form-group row">
                                                <div class="col-sm-4 offset-sm-3">
                                                    <button type="submit" class="btn btn-secondary" >停用</button>
                                                </div>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <input id="str" name="adminId" value="${li.adminId}" type="hidden"/>
                                            <input id="str" name="adminStatus" value="1" type="hidden"/>
                                            <div class="form-group row">
                                                <div class="col-sm-4 offset-sm-3">
                                                    <button type="submit" class="btn btn-primary">启用</button>
                                                </div>
                                            </div>

                                        </c:otherwise>
                                    </c:choose>
                                </form>
                                </tr>

                            </c:otherwise>
                        </c:choose>


                    </c:forEach>
                    </tbody>
                </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END LOGIN WRAPPER -->
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
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->


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
            "aLengthMenu" : [ 5, 10, 15] ,
            "aoColumnDefs": [
                //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
                {"orderable":false,"aTargets":[0,3]}// 不参与排序的列
            ]
        })})
</script>
<%--分页--%>

</body>
</html>