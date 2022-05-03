<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%String name = request.getParameter("name"); %>
	<%String bloodType = request.getParameter("bloodType"); %>
	
	<%=java.net.URLDecoder.decode(name)%>님의 혈액형은
	<%=bloodType %>이고 abababab!
</body>
</html>