<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@page isELIgnored="false" %>

<jsp:include page="../top.jsp" />


<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">报销单详情</h1>


    <div class="table-responsive">
        <h4 class="page-header">基本信息</h4>
        <ul class="list-group">
            <li class="list-group-item">事由：${claimVoucher.cause}  </li>
            <li class="list-group-item">创建人： ${claimVoucher.creater.name}</li>
            <li class="list-group-item">创建时间：<spring:eval expression="claimVoucher.createTime" /></li>
            <li class="list-group-item">待处理人：${claimVoucher.dealer.name}</li>
            <li class="list-group-item">状态： ${claimVoucher.status}</li>
        </ul>

        <h4 class="page-header">费用明细</h4>
        <ul class="list-group">
            <c:forEach items="${items}" var="item">
                <li class="list-group-item">${item.comment}</li>
                <li class="list-group-item">${item.amount}</li>
                <li class="list-group-item">${item.comment}</li>
                <hr />
            </c:forEach>
        </ul>
        <h4 class="page-header">总金额：${claimVoucher.totalAmount}</h4>


        <h4 class="page-header">处理流程</h4>
        <ul class="list-group">
            <c:forEach items="${records}" var="record">
                <li class="list-group-item">${record.dealer.name}</li>
                <li class="list-group-item">${record.dealTime}</li>
                <li class="list-group-item"><spring:eval expression="record.dealTime" /></li>
                <li class="list-group-item">${record.dealWay}</li>
                <li class="list-group-item">备注：${record.comment}</li>
                <hr />
            </c:forEach>
        </ul>
    </div>
</div>

<jsp:include page="../bottom.jsp" />