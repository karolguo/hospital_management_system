<%--
  Created by IntelliJ IDEA.
  User: hzq
  Date: 2019/9/19
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="css/style.css" rel="stylesheet">
<html>
<head>
    <title>Title</title>
</head>
<style type="text/css">
    .btn{
        display:inline-block;
        padding:6px 12px;
        margin-bottom:0;
        font-size:14px;
        font-weight:400;
        line-height:1.42857143;
        text-align:center;
        white-space:nowrap;
        vertical-align:middle;
        -ms-touch-action:manipulation;
        touch-action:manipulation;
        cursor:pointer;
        -webkit-user-select:none;
        -moz-user-select:none;
        -ms-user-select:none;
        user-select:none;
        background-image:none;
        border:1px solid transparent;
        border-radius:0
    }
    .btn-radius {
        border-radius: 500px;
        margin-left:30px;
    }
    .btn-default{
        color:#fff;
        background-color:#b5b4b4;
        border-color:#b5b4b4
    }
    .btn-default.active,.btn-default.focus,.btn-default:active,.btn-default:focus,.btn-default:hover,.open>.dropdown-toggle.btn-default{
        color:#fff;
        background-color:#a19e9e;
        border-color:#a19e9e
    }
    .btn-default.active,.btn-default:active,.open>.dropdown-toggle.btn-default{
        background-image:none
    }

    .btn-default.disabled,.btn-default.disabled.active,.btn-default.disabled.focus,.btn-default.disabled:active,.btn-default.disabled:focus,.btn-default.disabled:hover,.btn-default[disabled],.btn-default[disabled].active,.btn-default[disabled].focus,.btn-default[disabled]:active,.btn-default[disabled]:focus,.btn-default[disabled]:hover,fieldset[disabled] .btn-default,fieldset[disabled] .btn-default.active,fieldset[disabled] .btn-default.focus,fieldset[disabled] .btn-default:active,fieldset[disabled] .btn-default:focus,fieldset[disabled] .btn-default:hover{
        background-color:#b5b4b4;
        border-color:#b5b4b4
    }

    .btn-default .badge{
        color:#fff;
        background-color:#333
    }
</style>
<body  style="background:url(images/timg.jpg)top center no-repeat; background-size:cover;">
<div style=" left: 0;margin: 0 auto;padding: 100px 30px 10px;position: absolute;right: 0;top:7%;width: 80%;">
    <h2 style="color: #ce8483;font-size: 60px"> <strong style="color: #ac2925">Eleven 门诊系统</strong></h2>
<div style="margin-top: 30px"><h2 style="color: #ce8483"> 请选择登陆方式</h2></div>
    <div style="margin-top: 30px">
        <a href="admin_login.jsp"><button class="btn btn-radius btn-default"><i class="fa fa-align-left"></i> 管理员登录</button></a>
        <a href="doctor_login.jsp"><button class="btn btn-radius btn-default"><i class="fa fa-align-left"></i> 医生登录</button></a>
        <a href="drug_login.jsp"> <button class="btn btn-radius btn-default"><i class="fa fa-align-left"></i> 药剂师登录</button></a>
        <a href="registrars_login.jsp"><button class="btn btn-radius btn-default"><i class="fa fa-align-left"></i> 挂号员登录</button></a>
    </div>
</div>

</body>
</html>
