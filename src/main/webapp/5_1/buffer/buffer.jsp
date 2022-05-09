<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page buffer="none" %>
	<%
	int total = out.getBufferSize();
	out.print("첫번째 텍스트임!");
	out.clearBuffer();
	out.print("출력 버퍼크기"+total);
	out.print("<br>사용되지 않은 버퍼 크기 :" + out.getRemaining());
	out.flush();
	out.print("<br>flush후 버퍼의 크기 :" + out.getRemaining());
	%>
	<h3>메소드!</h3>
	<%
	out.print(10);
	out.print("aaa");
	out.print('가');
	out.print(new java.io.File("/"));
	out.print("버퍼의 크기 :" + out.getRemaining());
	%>
</body>
</html>