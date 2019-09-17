<%--
  Created by IntelliJ IDEA.
  User: zch
  Date: 2019/9/14
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>upload</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/upload" method="post" enctype="multipart/form-data">
    用户名：<input type="text" name="username"> <br>
    文件： <input type="file" name="file1"> <br>
    <input type="submit" value="上传">
</form>
</body>
</html>
