<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="org.bit.conan.BookBean" %>
 <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set value="amy" var="name"/> <br>
	<c:out value="${name }"/> <br>
	<c:remove var="name"/> <c:out value="${name }"/> <br>
	
	<%
	BookBean book1 = new BookBean("명탐정 홈즈","코난 도일","모름");
	request.setAttribute("bookOne", book1);
	%>
	<c:set var = "title" value="${bookOne.title }" /> <c:out value="${title }"/>
	<c:set var = "author" value="<%=book1.getAuthor() %>"/> <c:out value="${author }"/>
	<hr>
	<c:set var = "name">Wilde</c:set> <c:out value="${name }"/><br>
</body>
</html>