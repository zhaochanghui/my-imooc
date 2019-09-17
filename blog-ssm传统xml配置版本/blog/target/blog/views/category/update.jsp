<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<jsp:include page="../top.jsp" />

<h1 class="page-header">Dashboard</h1>

<div class="row placeholders">

</div>

<h2 class="sub-header">Section title</h2>
<div class="table-responsive">

<form:form action="update" method="post" modelAttribute="category">
    <form:hidden path="id" cssClass="form-control"/>
    <p>name: <form:input path="name" cssClass="form-control"></form:input></p>
    <p><button class="btn-success">提交</button></p>
</form:form>

</div>
<jsp:include page="../bottom.jsp" />