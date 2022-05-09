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
	request.setCharacterEncoding("utf-8");
	String userId = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
	session.setAttribute("userId",userId);
	session.setMaxInactiveInterval(60*1);
	%>
	<form action="sessionEx2.jsp" method="get">
		<input type="radio" name="season" value="봄">봄
		<input type="radio" name="season" value="여름">여름
		<input type="radio" name="season" value="가을">가을
		<input type="radio" name="season" value="겨울">겨울<p>
		<input type="radio" name="fruit" value="사과">사과
		<input type="radio" name="fruit" value="포도">포도
		<input type="radio" name="fruit" value="오렌지">오렌지
		<input type="radio" name="fruit" value="딸기">딸기<p>
		<input type="submit" value="결과보기">
	</form>

</body>
</html>