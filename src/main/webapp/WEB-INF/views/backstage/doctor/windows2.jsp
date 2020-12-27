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
    <title>开药单</title>
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#submitBtn").click(function () {
                //alert("点击事件")
                $.ajax({
                    type: "POST",
                    dataType: "text",
                    url: "doctor/chooseDrug",
                    data: $("#drugForm").serialize(),
                    success: function (r) {
                        if (r == "true") {
                            window.opener.location.reload();
                            window.opener = null;
                            window.close();
                        } else if (r == "false") {
                            alert("余额不足，请充值！");
                        }else {
                            alert("库存不足！")
                        }
                    }
                });
            });

            $("#first").click(function(){
                $.ajax({
                    url: "doctor/findDrugById?drugId="+$("#first").val(),
                    type: "POST",
                    dataType:'json',
                    success:function(data){
                        if(data!=null){
                                $("#drugNum").append(" <input class='form-control mb-3' name='drugNum' type='number' value='1' min='1' maxlength='3' max="+data.drugNum+">");
                        }
                    }
                });
            });
        });


    </script>
</head>
<body>
<div class="card-body">
    <form class="form-horizontal" id="drugForm">
        <input type="hidden" name="userId" value="${card.userId}">
        <input type="hidden" name="doctorId" value="${sessionScope.doctor.doctorId}">
        <div class="line"></div>
        <div class="form-group row">
            <label class="col-sm-3 form-control-label">药品</label>
            <div class="col-sm-9">
                <select id="first" name="drugId" class="form-control mb-3">
                    <option value="#">--请选择药品--</option>
                    <c:forEach items="${drugList}" var="d">
                        <c:if test="${d.drugNum!=0}">
                            <option value="${d.drugId}">${d.drugName}---${d.drugPrice}￥</option>
                            <%--<input type="hidden" name="drugPrice" value="${d.drugPrice}">--%>
                        </c:if>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 form-control-label">数量</label>
            <div class="col-sm-9">
                <div id="drugNum">

                </div>
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
</body>
</html>
