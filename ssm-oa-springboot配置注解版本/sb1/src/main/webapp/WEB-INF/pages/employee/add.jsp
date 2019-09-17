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
    <h1 class="page-header">员工管理--添加员工</h1>


    <div class="table-responsive">
        <!--modelAttribute="department" 和toAdd和add方法参数保持一致-->
        <form:form action="add" method="post" modelAttribute="employee">
            <div class="form-group">
                <label>工号</label>
                <form:input path="sn" cssClass="form-control" placeholder="编号"/>
            </div>
            <div class="form-group">
                <label>姓名</label>
                <form:input path="name" cssClass="form-control"  placeholder="姓名" />
            </div>

            <div class="form-group">
                <label>部门</label>
               <form:select path="departmentSn" cssClass="form-control" items="${dlist}" itemValue="sn"  itemLabel="name" placeholder="所属部门" />
            </div>

            <div class="form-group">
                <label>职位</label>
                <form:select path="post" cssClass="form-control" items="${plist}"  placeholder="职位" />
            </div>

            <button type="submit" class="btn btn-default">提交</button>
        </form:form>

    </div>
</div>




<jsp:include page="../bottom.jsp" />