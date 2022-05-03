<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page buffer="1kb" %>
	out.print("<br>사용되지 않은 버퍼 크기 :" + out.getRemaining());
	frist page
	<jsp:forward page="second.jsp"></jsp:forward>
</body>
</html>