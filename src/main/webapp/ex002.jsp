<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import= "java.util.Date" %>
	<%
	
	int hour = new Date().getHours();
	int one = 10;
	int two = 12;
	%>	
	<%!
		public int operration(int i,int j){
		return i > j ? i:j;
	}
	%>
	<%=new Date() %>
	지금은 오전일까요 오후일까요?
	<%=(hour < 12)? "오전":"오후" %><p>
	one two 큰 숫자는?
	<%=operration(one, two) %><p>
</body>
</html>