<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
	1에서 10까지의 합은?
	<%
	int sum = 0;
	for(int i=1;i<11;i++)
	{
	sum+=i;
	%>
		<%=i %> <%if(i!=10){out.println("+");}
		else out.println(" = "); %>
	<%
	}%>
	<%=sum %>
	</p>
</body>
</html>