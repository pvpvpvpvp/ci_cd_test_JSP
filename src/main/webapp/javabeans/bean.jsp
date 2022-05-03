<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean class="org.bit.conan.HelloBean" id ="hello" scope="page">
		<jsp:getProperty property="name" name="hello"/><br/>
		<jsp:getProperty property="number" name="hello"/><br/>
		<hr>
		<jsp:setProperty property="*" name="hello"/>
		<jsp:getProperty property="name" name="hello"/><br/>
		<jsp:getProperty property="number" name="hello"/><br/>
	</jsp:useBean>
</body>
</html>