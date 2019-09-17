<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<jsp:include page="../top.jsp" />

<h1 class="page-header">Dashboard</h1>

<div class="row placeholders">

</div>

<h2 class="sub-header">Section title</h2>
<div class="table-responsive">
    <form:form action="add" method="post" modelAttribute="category">
        <p>name: <form:input path="name"  cssClass="form-control"/></p>
        <p><button class="btn-success">提交</button></p>
    </form:form>
</div>



<jsp:include page="../bottom.jsp" />