<%--
  Created by IntelliJ IDEA.
  User: zch
  Date: 2019/9/7
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<jsp:include page="../top.jsp" />


<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">员工个人信息</h1>


    <div class="table-responsive">

    <ul class="list-group">
        <li class="list-group-item">工号：${sessionScope.employee.sn}  </li>
        <li class="list-group-item">姓名： ${sessionScope.employee.name}</li>
        <li class="list-group-item">部门： ${sessionScope.employee.department.name}</li>
        <li class="list-group-item">职务： ${sessionScope.employee.post}</li>
    </ul>

    </div>
</div>

<jsp:include page="../bottom.jsp" />