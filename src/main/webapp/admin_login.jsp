<%--
  Created by IntelliJ IDEA.
  User: gfh16
  Date: 2019/9/19
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="${basePath}"/>
    <title>管理员登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="css/main.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<div class="login">
    <div style="height: 50px;margin-top: 0px;color: #c3c3c3"><h2 style="font-size: 30px;margin-left: 40%"><strong>Eleven
        门诊</strong>欢迎您</h2></div>
    <div class="box png">

        <div class="logo png"></div>
        <div class="input">

            <div class="log">

                <form action="admin/adminLogin" method="post">
                    <div class="name">
                        <label>用户名</label><input type="text" class="text" id="value_1" placeholder="管理员"
                                                 name="adminLoginName" tabindex="1">
                    </div>
                    <div class="pwd">
                        <label>密　码</label><input type="password" class="text" id="value_2" placeholder="密码"
                                                 name="adminLoginPwd" tabindex="2">
                        <input type="submit" class="submit" tabindex="3" value="登录">
                        <div class="check"></div>
                    </div>
                    <input  name="role.roleId" value=8 type="hidden"/>
                </form>
                <div class="tip"></div>
            </div>
        </div>
    </div>
    <div class="air-balloon ab-1 png"></div>
    <div class="air-balloon ab-2 png"></div>
    <div class="footer"></div>
</div>


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/fun.base.js"></script>
<script type="text/javascript" src="js/script.js"></script>


<!--[if IE 6]>
<script src="js/DD_belatedPNG.js" type="text/javascript"></script>

<script>DD_belatedPNG.fix('.png')</script>
<![endif]-->

</body>
</html>
