<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디  : <%=request.getParameter("userId") %>
	<%String name = request.getParameter("name"); %>
	이름 : 
	<%=java.net.URLDecoder.decode(name) %>
</body>
</html>