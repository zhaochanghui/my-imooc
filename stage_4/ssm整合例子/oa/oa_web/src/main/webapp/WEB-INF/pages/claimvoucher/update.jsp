<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="../top.jsp" />

<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">修改报销单</h1>


    <div class="table-responsive">

        <form:form cssClass="form-horizontal" modelAttribute="info" action="update" method="post">
            <form:hidden path="claimVoucher.id" />
            <div class="form-group">
                <label  class="col-sm-2 control-label">事由</label>
                <div class="col-sm-10">
                    <form:input path="claimVoucher.cause" cssClass="form-control" placeholder="事由" />
                </div>
            </div>

            <div class="form-group">
                <label  class="col-sm-2 control-label">选项 &nbsp;&nbsp;<span id="additem">加一个</span></label>

                    <c:forEach items="${info.items}" varStatus="sta">
                <div class="col-sm-10 additem">
                        <form:hidden path="items[${sta.index}].id" />
                        <form:hidden path="items[${sta.index}].claimVoucherId" />
                    <form:select path="items[${sta.index}].item" items="${items}" cssClass="form-inline" placeholder="花销类型" cssStyle="width: 25%;" />
                    <form:input path="items[${sta.index}].amount"  cssClass="form-inline money" placeholder="金额" cssStyle="width: 25%;" />
                    <form:input path="items[${sta.index}].comment"  cssClass="form-inline" placeholder="备注" cssStyle="width: 25%;" />
                    <hr/>
                <span class="delbtn">删除</span></div>
                    </c:forEach>

            </div>



            <div class="form-group">
                <label  class="col-sm-2 control-label">总金额</label>
                <div class="col-sm-10">
                    <form:input id="totalAmount" path="claimVoucher.totalAmount"  cssClass="form-control" placeholder="总金额"  />
                </div>
            </div>


            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">提交</button>
                </div>
            </div>
        </form:form>
       

    </div>
</div>


<jsp:include page="../bottom.jsp" />

<script>
    $("#additem").click(function () {
        var html = $(".additem:last").html();

        var len =  $(".additem").length;




        html= html.replace( 'items'+(len-1)+'.item' ,  'items'+(len)+'.item' );
        html= html.replace( 'items['+(len-1)+'].item' ,  'items['+(len)+'].item' );

        html= html.replace( 'items'+(len-1)+'.amount' ,  'items'+(len)+'.amount' );
        html= html.replace( 'items['+(len-1)+'].amount' ,  'items['+(len)+'].amount' );

        html= html.replace( 'items'+(len-1)+'.comment' ,  'items'+(len)+'.comment' );
        html= html.replace( 'items['+(len-1)+'].comment' ,  'items['+(len)+'].comment' );


        var str = '<div class="col-sm-10 additem">';
            str += html;
        str+="</div>";

        $(".additem:last").after(str);
    });

    $(".delbtn").click(function () {
        $(this).parent().remove();
    });
</script>