<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%String pagename = request.getParameter("bloodType")+".jsp"; %>
	<jsp:forward page="<%=pagename %>">
		<jsp:param name="name" value='<%=java.net.URLEncoder.encode("코난") %>'/>	
	</jsp:forward>
	<p>Java Server Page
</body>
</html>