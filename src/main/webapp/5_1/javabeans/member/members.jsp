<%@page import="org.bit.conan.MembersDTO"%>
<%@page import="org.apache.catalina.tribes.membership.Membership"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	MembersDTO mem = new MembersDTO();
			mem.setUserId("conan");
			mem.setName("코난");
	%>
	<%=mem.getName() %><br/>
	<%=mem.getUserId() %><br/>
</body>
</html>