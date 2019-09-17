<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.zch.oa.global.Contant" %>

<%@page isELIgnored="false" %>

<jsp:include page="../top.jsp" />


<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">员工个人信息</h1>


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

        <hr/>
        <form:form action="check" method="post" modelAttribute="record">
            <form:hidden path="claimVoucherId" />
            <div class="form-group">
                <label>备注</label>
                <form:input path="comment" cssClass="form-control" />

            </div>
            <div>
                <c:if test="${sessionScope.employee.post==Contant.POST_FM || sessionScope.employee.post==Contant.POST_GM}">
               <button type="submit" class="btn btn-success" name="dealWay" value="${Contant.DEAL_PASS}"> ${Contant.DEAL_PASS} </button>
               <button type="submit" class="btn btn-success" name="dealWay" value="${Contant.DEAL_BACK}"> ${Contant.DEAL_BACK} </button>
               <button type="submit" class="btn btn-success" name="dealWay" value="${Contant.DEAL_REJECT}"> ${Contant.DEAL_REJECT} </button>
                </c:if>

                <c:if test="${sessionScope.employee.post==Contant.POST_CASHIER}">
                <button type="submit" class="btn btn-success" name="dealWay" value="${Contant.DEAL_PAID}"> ${Contant.DEAL_PAID} </button>
                </c:if>

            </div>

        </form:form>


    </div>
</div>

<jsp:include page="../bottom.jsp" />