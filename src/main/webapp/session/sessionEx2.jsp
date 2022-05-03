<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(session.getAttribute("userId")!=null){ %>
	<%=session.getAttribute("userId") %> 님이 좋아하는 계절과 과일은
	<%=request.getParameter("season") %>
	<%=request.getParameter("fruit")%> 입니다.<p>
	세션 ID : <%=session.getId() %><p>
	세션 유지 시간 : <%=session.getMaxInactiveInterval() %><p>
	세션 생성 시간 : <%=session.getCreationTime() %><p>
	세션 마지막 Accessed : <%=session.getLastAccessedTime() %><p>
	<%response.setIntHeader("Refresh", 100); %>
	<%}else{
		%>
		세션 유지시간 끗!
	<%}%>
</body>
</html>