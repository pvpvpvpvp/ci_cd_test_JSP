<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean class="org.bit.conan.Members" id="member" scope="application"/>
	<jsp:setProperty property="*" name="member"/>
	<jsp:getProperty property="name" name="member"/>
	(<jsp:getProperty property="userId" name="member"/>)님 안녕!
</body>
</html>