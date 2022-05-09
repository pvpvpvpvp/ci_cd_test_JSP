<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이동하고 싶은 페이지 
	<form action="forwardController.jsp" method="get">
		<input type="text" name=pagename>
		<input type="submit" value="이동">
	</form>
</body>
</html>