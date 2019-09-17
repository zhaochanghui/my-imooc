<%--
  Created by IntelliJ IDEA.
  User: li
  Date: 2019-09-02
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="<%=request.getContextPath()%>/department/edit.do" method="post">
    <input type="hidden" name="id" value="${obj.id}">
    <p>name:<input type="text" name="name" value="${obj.name}"> </p>
    <p>address:<input type="text" name="address" value="${obj.address}"> </p>
    <p><button>submit</button></p>
</form>

</body>
</html>
