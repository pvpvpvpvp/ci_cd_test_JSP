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
		session.setAttribute("userId", "rose");
		session.setAttribute("userPwd", "1234");	
	%>
	<%=session.getAttribute("userId") %>
	<%=session.getAttribute("userPwd") %><p>
	<% session.removeAttribute("userPwd"); %>
	<%=session.getAttribute("userId") %>
	<%=session.getAttribute("userPwd") %><p>

	 
	<%String s = session.getId();
		long lastTime = session.getLastAccessedTime();
		long startTime = session.getCreationTime();
		long lapse = (lastTime-startTime)/1000/60;
	%>
	세션 아이디 <%=s %> <p>
	요청 시작시간 <%=lastTime %> <p>
	요청 마지막시간 <%=startTime %> <p>
	웹사이트 경과 시간 <%=lapse %> 분<p>
</body>
</html>