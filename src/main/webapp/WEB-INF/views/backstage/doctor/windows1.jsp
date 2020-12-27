<%--
  Created by IntelliJ IDEA.
  User: gfh16
  Date: 2019/9/23
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<base href="${basePath}"/>
<html>
<head>

    <title>检查项目</title>
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            //点击一级科室获取二级科室
            $("#first").click(function(){
                $("#second").empty();//清空下拉列表
                $("#second").append(" <option>--请选择小项--</option>");
                $.ajax({
                    url: "doctor/findCheckByParentId?checkParentId="+$("#first").val(),
                    type: "POST",
                    dataType:'json',
                    success:function(data){
                        $("#second").empty();//清空下拉列表
                        $("#second").append(" <option>--请选择小项--</option>");
                        if(data!=null){
                            $.each(data,function(k,v){
                                $("#second").append(" <option value='" + v.checkId +" '>" + v.checkName +"---"+v.checkPrice+"￥"+ "</option>");
                            });
                        }else{$("#second").empty();//清空下拉列表
                            $("#second").append(" <option>--请选择小项--</option>");
                        }
                    }
                });
            });



            $("#submitBtn").click(function(){
                //alert("点击事件")
                $.ajax({
                    type:"POST",
                    dataType:"text",
                    url:"doctor/chooseCheck",
                    data:$("#checkForm").serialize(),
                    success:function(r){
                        if(r == "true"){
                            window.opener.location.reload();
                            window.opener=null;
                            window.close();
                        }else {
                            alert("余额不足，请充值！");
                        }
                    }
                });
            });

        });


    </script>
</head>
<body>
<div class="card-body">
    <form class="form-horizontal" id="checkForm">
        <input type="hidden" name="userId" value="${card.userId}">
        <input type="hidden" name="doctorId" value="${sessionScope.doctor.doctorId}">
        <div class="line"></div>
        <div class="form-group row">
            <label class="col-sm-3 form-control-label">检查大项</label>
            <div class="col-sm-9">
                <select id="first" name="checkParentId" class="form-control mb-3">
                    <option value="#">--请选择大项--</option>
                    <c:forEach items="${checkList}" var="c">
                        <c:if test="${c.checkParentId==null}">
                            <option value="${c.checkId}">${c.checkName}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 form-control-label">检查小项</label>
            <div class="col-sm-9">
                <select id="second" name="checkId" class="form-control mb-3">
                    <option>--请选择小项--</option>
                </select>
            </div>
        </div>
        <div style="color: #FF0000">
            <c:if test="${res!=null}">${res}</c:if>
        </div>

        <div class="form-group row">
            <div class="col-sm-4 offset-sm-3">
                <input type="button" id="submitBtn" value="选择" class="btn btn-primary"/>
            </div>
        </div>
    </form>
</div>

    <%--<form id="">
        <input type="hidden" name="userId" value="${card.userId}">
        <input type="hidden" name="doctorId" value="${sessionScope.doctor.doctorId}">
        <select id="" name="checkParentId">
            <c:forEach items="${checkList}" var="c">
                <c:if test="${c.checkParentId==null}">
                    <option value="${c.checkId}">${c.checkName}</option>
                </c:if>
            </c:forEach>
        </select>
        <select id="second" name="checkId">
            <option>选择二级科室检查项</option>
        </select><br>
        <div style="color: #FF0000">
            <c:if test="${res!=null}">${res}</c:if>
        </div>
        <input type="button" id="submitBtn" value="选择">
    </form>--%>

</body>
</html>
