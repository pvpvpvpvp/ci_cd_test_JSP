<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="forwardRequest.jsp">
	혈액형별 성격 테스트
	<p>당신의 혈액형은?</p>
	<input type="radio" name="bloodType" value="a">A<br/>
	<input type="radio" name="bloodType" value="b">B<br/>
	<input type="radio" name="bloodType" value="o">O<br/>
	<input type="radio" name="bloodType" value="ab">AB<br/>
	<input type="submit" value="보내기"><br/>
	</form>
</body>
</html>