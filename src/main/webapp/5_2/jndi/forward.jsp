<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="book" class="org.bit.conan.BookBean"/>
	<jsp:setProperty property="*" name="book"/>
	<%
		request.setAttribute("book", book);
	%>
	<jsp:forward page="bookview.jsp"/>
</body>
</html>