<%--
  Created by IntelliJ IDEA.
  User: li
  Date: 2019-09-02
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

${name}
<hr />
<p> <a href="<%=request.getContextPath()%>/department/toadd.do">add</a></p>
<c:forEach items="${list}"  var="obj">
    <p>name:${obj.name} ||  address: ${obj.address} ||
        <a href="<%=request.getContextPath()%>/department/delete.do?id=${obj.id}">删除</a>&nbap;&nbsp;
        <a href="<%=request.getContextPath()%>/department/toedit.do?id=${obj.id}">更新</a>
    </p>
</c:forEach>
</body>
</html>
