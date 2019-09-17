<%--
  Created by IntelliJ IDEA.
  User: zch
  Date: 2019/9/7
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../top.jsp" />


<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">部门管理</h1>


    <div class="table-responsive">
        <!--modelAttribute="department" 和toAdd和add方法参数保持一致-->
        <form:form action="add" method="post" modelAttribute="department">
            <div class="form-group">
                <label>sn</label>
                <form:input path="sn" cssClass="form-control" placeholder="编号"/>
            </div>
            <div class="form-group">
                <label>name</label>
                <form:input path="name" cssClass="form-control"  placeholder="名称" />
            </div>

            <div class="form-group">
                <label>address</label>
                <form:input path="address" cssClass="form-control"  placeholder="地址" />
            </div>

            <button type="submit" class="btn btn-default">提交</button>
        </form:form>

    </div>
</div>




<jsp:include page="../bottom.jsp" />