<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@page isELIgnored="false" %>

<jsp:include page="../top.jsp" />


<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">个人报销单</h1>


    <div class="table-responsive">


        <ul class="list-group">
            <c:forEach items="${list}" var="item">
                <li class="list-group-item">事由：${item.cause}  </li>
                <li class="list-group-item">状态： ${item.status}</li>
                <li class="list-group-item">创建人： ${item.dealer.name}</li>
                <li class="list-group-item">总金额： ${item.totalAmount}</li>
                <li class="list-group-item">总金额： ${item.totalAmount}</li>

                <li class="list-group-item">创建时间：<spring:eval expression="item.createTime" /></li>

               <li><a href="<%=request.getContextPath()%>/claim_voucher/detail?id=${item.id}">详细信息</a></li>
            </c:forEach>

        </ul>




    </div>
</div>

<jsp:include page="../bottom.jsp" />