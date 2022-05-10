<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="../../BookReg" method="POST">
		책 아이디 : <input type="text" name='bookid'>
		책 제목 : <input type="text" name='title'>
		책 출판사 : <input type="text" name='publisher'>
		책 가격 : <input type="text" name='price'>
		<input type="submit" value="전송">
	</form>
</body>
</html>