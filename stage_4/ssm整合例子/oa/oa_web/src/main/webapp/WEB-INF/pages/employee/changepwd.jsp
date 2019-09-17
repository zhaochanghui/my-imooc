<%--
  Created by IntelliJ IDEA.
  User: zch
  Date: 2019/9/7
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<jsp:include page="../top.jsp" />


<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">修改密码</h1>

    <a href="<%=request.getContextPath()%>/self">我的资料</a>
    <form action="<%=request.getContextPath()%>/changepwd" method="post" >
        <div class="form-group" >
            <label>当前密码</label>
            <input type="password" class="form-control" name="old" />
        </div>

        <div class="form-group" >
            <label>新密码</label>
                <input type="password" class="form-control" name="new1" />
        </div>

        <div class="form-group" >
            <label>确认密码</label>
            <input type="password" class="form-control" name="new2" />
        </div>

        <button type="submit" class="btn btn-default">确认修改</button>
    </form>
</div>


<jsp:include page="../bottom.jsp" />