<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zch
  Date: 2019/9/13
  Time: 22:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<jsp:include page="../top.jsp" />

<h1 class="page-header">Dashboard</h1>

<div class="row placeholders">

</div>

<div class="table-responsive">

    <table class="table table-hover">
        <caption>list</caption>
        <thead>
        <tr>
            <th>title</th>
            <th>brief</th>
            <th>category</th>
            <th>操作 </th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${list}" var="item">
            <tr>
                <td>${item.title}</td>
                <td>${item.brief}</td>
                <td>${item.category.name}</td>
                <td>
                    <a href="<%=request.getContextPath()%>/article/to_update/${item.id}">修改</a>
                    <a href="<%=request.getContextPath()%>/article/delete/${item.id}">删除</a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>


<jsp:include page="../bottom.jsp" />