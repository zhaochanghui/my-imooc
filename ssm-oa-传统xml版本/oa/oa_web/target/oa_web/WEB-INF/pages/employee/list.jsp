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

<jsp:include page="../top.jsp" />


<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">员工管理</h1>

    <a href="<%=request.getContextPath()%>/employee/to_add">添加员工</a>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>#</th>
                <th>工号</th>
                <th>姓名</th>
                <th>部门</th>
                <th>职位</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${list}" var="item">
                <tr>
                    <td>#</td>
                    <td>${item.sn}</td>
                    <td>${item.name}</td>
                    <td>${item.department.name}</td>
                    <td>${item.post}</td>
                    <td>
                        <a href="<%=request.getContextPath()%>/employee/to_update?sn=${item.sn}">更新</a>
                    <a href="<%=request.getContextPath()%>/employee/remove?sn=${item.sn}">删除</a></td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
</div>




<jsp:include page="../bottom.jsp" />