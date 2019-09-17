<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2 id="box"></h2>
<script>
	var f = <%=request.getParameter("f") %>;
	if(f==1){
		alert("你没有登录或者再别的地方登录了")
	}
</script>

<form action="/demo/login" method="post">
	name: <input type="text" name="name"/></br>
	pwd: <input type="text" name="pwd" /></br>
	<button>登录</button>
</form>
</body>
</html>