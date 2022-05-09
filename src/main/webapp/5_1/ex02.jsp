<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title</title>
</head>
<body>
	<h1>구구단 출력</h1>
	<%
	for(int i =2;i<10;i++)
	{
		for(int j=2;j<10;j++)
		{%>
			<%=i%>*<%=j%>=<%=i*j%><br>
	<% 	}
	}
	%>
</body>
</html>