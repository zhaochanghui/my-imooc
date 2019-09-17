<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: li
  Date: 2019-09-12
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<jsp:include page="../top.jsp" />

<h1 class="page-header">Dashboard</h1>

<div class="row placeholders">

</div>

<h2 class="sub-header">Section title</h2>
<div class="table-responsive">

<c:forEach items="${list}" var="item">
    <p>n:${item.name}| p:${item.parent.name}
        <a href="<%=request.getContextPath()%>/category/to_update?id=${item.id}">update</a>
        <a href="<%=request.getContextPath()%>/category/delete?id=${item.id}">del</a>
    </p>
</c:forEach>

</div>
<jsp:include page="../bottom.jsp" />