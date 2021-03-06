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
                    <%--<ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
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
                        </li>--%>
                    <!-- Messages                        -->
                    <%--<li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">10</span></a>
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
                <%--         <div class="title">
                             <h1 class="h4">${.role.roleName}</h1>
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
                    <h2 class="no-margin-bottom">添加医生人员</h2>
                </div>
            </header>
            <!-- LOGIN WRAPPER  -->
            <div class="breadcrumb-holder container-fluid">
            </div>
            <%--<div class="table-responsive">--%>
            <div class="page-container">
                <div class="mt-20">
                    <div class="card-body">
                    <form class="form-horizontal" action="admin/adminAddDoctor" method="post">
                        <input type="hidden" value="adminAddDoctor" name="flag">
                        <%-- 医生头像: <div class="form-group row">
                         &lt;%&ndash;<label for="fileInput" class="col-sm-3 form-control-label">我的头像</label>&ndash;%&gt;
                         <div class="col-sm-9">
                             <input id="fileInput" type="file" class="form-control-file" name="file" placeholder="头像" accept="image/gif, image/jpeg, image/png, image/jpg"><img style="height: 50px;width: 50px;" src='${pageContext.request.contextPath}/${doctor.doctorPic}'>

                         </div>
                     </div>--%>

                        <div class="row">
                            <label class="col-sm-3 form-control-label"></label>
                            <div class="col-sm-9">
                                <div class="form-group-material">
                                    <input id="register-username" type="text" name="doctorName" required class="input-material">
                                    <label for="register-username" class="label-material">医生名称</label>
                                </div>
                                <div class="form-group-material">
                                    <input id="register-username1" type="text" name="doctorPwd" required class="input-material">
                                    <label for="register-username1" class="label-material">医生密码</label>
                                </div>
                                <div class="form-group-material">
                                    <input id="register-username2" type="text" name="doctorInfo" required class="input-material">
                                    <label for="register-username2" class="label-material">医生介绍</label>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">医生性别</label>
                                    <div class="col-sm-9">
                                        <select name="doctorSex" class="form-control mb-3">
                                            <option value="男">男</option>
                                            <option value="女">女</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">医生状态</label>
                                    <div class="col-sm-9">
                                        <select name="doctorStatus" class="form-control mb-3">
                                            <option value="1">正常运作</option>
                                            <option value="0">账号停用</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">医生所属科室</label>
                                    <div class="col-sm-9">
                                        <select name="dept.deptId" class="form-control mb-3">
                                            <c:forEach items="${depts}" var="dt">
                                                <option value="${dt.deptId}" >
                                                        ${dt.deptName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">医生职称</label>
                                    <div class="col-sm-9">
                                        <select name="job.jobId" class="form-control mb-3">
                                            <c:forEach items="${jobs}" var="jb">
                                                <option value="${jb.jobId}" <c:if test="${job.jobId==jb.jobId}"><c:out value="selected"/></c:if>>
                                                        ${jb.jobName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">医生权限</label>
                                    <div class="col-sm-9">
                                        <select name="role.roleId" class="form-control mb-3">
                                            <option value="5">院长</option>
                                            <option value="6">副院长</option>
                                            <option value="7">科室主任</option>
                                            <option value="1">医师</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-sm-4 offset-sm-3">
                                        <button type="submit" class="btn btn-secondary">添加</button>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <%--医生名称:<input type="text" name="doctorName"><br>
                        医生密码:<input type="text" name="doctorPwd"><br>
                        医生介绍:<input type="text" name="doctorInfo"><br>
                        医生性别:<select name="doctorSex">
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select><br>

                        医生状态:<select name="doctorStatus">
                        <option value="1">正常运作</option>
                        <option value="0">账号停用</option>
                    </select><br>
                        医生所属科室:<select name="dept.deptId">
                        <c:forEach items="${depts}" var="dt">
                            <option value="${dt.deptId}" >
                                    ${dt.deptName}
                            </option>
                        </c:forEach>
                    </select><br>
                        医生职称:<select name="job.jobId">
                        <c:forEach items="${jobs}" var="jb">
                            <option value="${jb.jobId}" <c:if test="${job.jobId==jb.jobId}"><c:out value="selected"/></c:if>>
                                    ${jb.jobName}
                            </option>
                        </c:forEach>
                    </select><br>
                        医生权限:<select name="role.roleId">
                        <option value="5">院长</option>
                        <option value="6">副院长</option>
                        <option value="7">科室主任</option>
                        <option value="1">医师</option>
                    </select><br>


                        <input type="submit" value="添加">--%>
                    </form>
                    </div>
                </div>
                <%-- </div>--%>
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

</body>
</html>