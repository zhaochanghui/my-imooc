<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    <%
   
    
   	if(session.getAttribute("p")==null){
   		response.sendRedirect(request.getContextPath()+"/login.jsp");
   	}
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script>
	
</script>
hello ${p.name }
</body>
</html>