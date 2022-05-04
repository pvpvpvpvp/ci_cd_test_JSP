<%@page import="org.apache.catalina.webresources.Cache"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String str = request.getParameter("msg");%>
		<c:catch var ="e">
	<% 
	if(str.equals("add")){
		out.print(str);
	}
	%>
	</c:catch>
	<c:out value="${e }"></c:out>
	<hr>
	
	<c:set var="num" value="${85 }"/>
	점수 : <c:out value="${num }"/>은
	<c:if test="${num>60 }">합격입니다.</c:if>
	<c:choose>
		<c:when test="${num>=90 }">A학점입니다.!</c:when>
		<c:when test="${num>=80 }">B학점입니다.!</c:when>
		<c:when test="${num>=70 }">C학점입니다.!</c:when>
		<c:when test="${num>=60 }">D학점입니다.!</c:when>
	</c:choose>
</body>
</html>