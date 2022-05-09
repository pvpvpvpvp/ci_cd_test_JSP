<%@page import="java.util.Date"%>
<%@page import="org.apache.catalina.startup.ContextConfig.ContextXml"%>
<%@page import="org.apache.catalina.webresources.Cache"%>
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
	response.setHeader("Cache-control", "use_cache");
	response.addHeader("contentType", "text/html; charset=utf-8");
	response.setDateHeader("date",  1L);
	%>
	Cache-control : <%=request.getHeader("Cache-control") %><p>
	contentType : <%=request.getHeader("contentType") %><p>
	date : <%=request.getHeader("date") %><p>
	
	<%response.setIntHeader("Refresh", 5); %>
	<%=(new java.util.Date()) %>
</body>
</html>