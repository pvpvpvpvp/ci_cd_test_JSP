<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%String pagename = request.getParameter("pagename")+".jsp"; %>
	<jsp:forward page="<%=pagename%>"></jsp:forward>
</body>
</html>