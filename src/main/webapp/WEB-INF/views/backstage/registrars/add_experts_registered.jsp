<%--
  Created by IntelliJ IDEA.
  User: ft
  Date: 2019/9/25
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src=" https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        //-----------------失焦提交输入的身份证号，如果有加入名字，没有就让输数据
        $("#userId").blur(function(){
            $.ajax({
                url: "registrars/findUserNameByUserId?userId="+$("#userId").val(),
                type: "POST",
                dataType:'json',
                success:function(data){
                    if(data!=null){
                        $("#addName").empty();//清空下拉列表
                        $("#addName").append("<input  readonly=\"readonly\" value='" + data.userName + "' type=\"text\" name=\"userName\" required class=\"input-material\">");
                        /*$("#addName").append("<label class=\"label-material\">用户名称</label>");*/
                    }else {
                        $("#addName").empty();//清空下拉列表
                        $("#addName").append("<input required=\"true\" type=\"text\" name=\"userName\" required class=\"input-material\">");

                    }
                }
            });
        });

        //点击一级科室获取二级科室
        $("#zero").click(function(){
            $("#second").empty();//清空下拉列表
            $("#second").append(" <option value=\"0\">请选择医生</option>");
            $.post("registrars/findDoctorByDeptIdAndRoleId",{deptId:$("#first").val(),jobId:$("#zero").val()},function (result) {
                //alert("这个是回传的数据"+result.doctorId);
                $.each(result,function(k,v){
                    $("#second").append(" <option value='" + v.doctorId + "'>" + v.doctorName + "</option>");
                });
            },"json");
            //--------------------------------------------
        });

        $("#first").click(function(){
            $("#second").empty();//清空下拉列表
            $("#second").append(" <option value=\"0\">请选择医生</option>");
            $.post("registrars/findDoctorByDeptIdAndJobId",{deptId:$("#first").val(),jobId:$("#zero").val()},function (result) {
                //alert("这个是回传的数据"+result.doctorId);

                $.each(result,function(k,v){
                    $("#second").append(" <option value='" + v.doctorId + "'>" + v.doctorName + "</option>");
                });
            },"json");

        });

    });
</script>
<base href="${basePath}"/>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>添加专家号</title>
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

        <div style=" width:900px;">
                <%-- -------主体---------%>
            <div style="margin-top:20px;margin-right:auto;margin-left:auto;width: 200px;">
            <h2 style="margin-right: auto;margin-right: auto;">专家号</h2></div>
                <form method="post" action="registrars/addRegistered" style="margin-left: 20px;">
                    <div class="line" style="margin-top: 20px;"> </div>
                    <div class="row">
                        <label class="col-sm-3 form-control-label">请输入基本信息</label>
                        <div class="col-sm-9">
                            <div class="form-group-material">
                                <input id="userId" type="text" name="userId" required class="input-material">
                                <label  class="label-material">身份证号</label>
                            </div>

                            <div id="addName" class="form-group-material">
                               <%-- <input  id="register-username" type="text" name="userName" required class="input-material">
                                <label for="register-username" class="label-material">用户名称</label>--%>
                            </div>
                        </div>
                    </div>

                    <!-- 下拉框 -->
                    <div class="line"></div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label">职称</label>
                        <div class="col-sm-9">
                            <select  id="zero" name="jobId" class="form-control mb-3" >
                                <option value="0">职称</option>
                                <c:forEach  items="${jobList}" var="dep">
                                    <c:if test="${dep.jobId!=1}">
                                        <option value="${dep.jobId}">
                                            ${dep.jobName}
                                        </option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                        <label class="col-sm-3 form-control-label"  >科室类型</label>
                        <div class="col-sm-9">
                            <select required id="first" name="deptId" class="form-control mb-3" >
                                <option value="0">科室类型</option>
                                <c:forEach items="${deptList}" var="dep">
                                    <c:if test="${dep.deptParentId==null}">
                                        <option value="${dep.deptId}">${dep.deptName}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>

                        <label class="col-sm-3 form-control-label">医生</label>
                        <div class="col-sm-9">
                            <select name="doctorId" id="second" class="form-control mb-3" >
                                <option value="0">请选择医生</option>
                            </select>
                        </div>

                    </div>
                    <!-- 提交按钮 -->
                    <div class="line"></div>
                    <div class="form-group row">
                        <div class="col-sm-4 offset-sm-3">
                            <button type="submit" class="btn btn-primary">添加挂号单</button>
                        </div>
                    </div>
                    <table class="layui-table" lay-skin="line" lay-filter="parse-table-demo">
                        <thead>
                        <tr>
                            <th lay-data="{field:'username', width:200}">职称</th>
                            <th lay-data="{field:'joinTime', width:150}">价格</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${jobList }" var="dep">

                            <c:if test="${dep.jobId!=1}">
                            <tr>
                                <td>${dep.jobName}</td>
                                <td>${dep.jobFee}￥</td>
                            </tr></c:if>
                        </c:forEach>

                        </tbody>
                    </table>
                </form>
                    <%--主体--%>
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
