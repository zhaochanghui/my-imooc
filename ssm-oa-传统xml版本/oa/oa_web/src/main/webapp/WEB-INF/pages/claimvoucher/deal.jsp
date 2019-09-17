<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@page isELIgnored="false" %>

<%@page import="com.zch.oa.global.Contant" %>
<jsp:include page="../top.jsp" />


<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">待处理报销单</h1>


    <div class="table-responsive">


        <ul class="list-group">
            <c:forEach items="${list}" var="item">
                <li class="list-group-item">事由：${item.cause}  </li>
                <li class="list-group-item">状态： ${item.status}</li>
                <li class="list-group-item">创建人： ${item.dealer.name}</li>
                <li class="list-group-item">总金额： ${item.totalAmount}</li>
                <li class="list-group-item">总金额： ${item.totalAmount}</li>

                <li class="list-group-item">创建时间：<spring:eval expression="item.createTime" /></li>

               <li>
                   <c:if test="${item.status==Contant.CLAIMVOUCHER_CREATED || item.status==Contant.CLAIMVOUCHER_back}">
                   <a href="<%=request.getContextPath()%>/claim_voucher/to_update?id=${item.id}">修改</a>
                   <a href="<%=request.getContextPath()%>/claim_voucher/submit?id=${item.id}">提交</a>
                       </c:if>

                    <c:if test="${item.status==Contant.CLAIMVOUCHER_SUBMIT || item.status==Contant.CLAIMVOUCHER_RECHECK}">
                       <a href="<%=request.getContextPath()%>/claim_voucher/to_check?id=${item.id}">审核</a>
                       </c:if>
                <c:if test="${item.status==Contant.CLAIMVOUCHER_APPROVED}">
                       <a href="<%=request.getContextPath()%>/claim_voucher/to_check?id=${item.id}">打款</a>
                       </c:if>

                <li><a href="<%=request.getContextPath()%>/claim_voucher/to_add">相信信息</a></li>

               </li>
            </c:forEach>

        </ul>




    </div>
</div>

<jsp:include page="../bottom.jsp" />