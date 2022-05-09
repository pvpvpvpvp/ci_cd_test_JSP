<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% int count =0; %>
	1이 증가된 후 카운트 값은
	<% out.println(++count); %>
	<br/>
		오늘 날짜는 <%=new java.util.Date() %>
	<h3>구구단 출력</h3>
	<%
	for(int i =2;i<10;i++)
		for(int j=2;j<10;j++)
		{
			out.println(i+"*"+j+"="+i*j);%>
			<br/>
			<%	
		}
	%>

</body>
</html>