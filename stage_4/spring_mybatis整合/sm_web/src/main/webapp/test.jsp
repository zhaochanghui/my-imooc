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
<c:forEach items="${list}"  var="cate">
    <p>${cate.name}</p>
</c:forEach>
</body>
</html>
