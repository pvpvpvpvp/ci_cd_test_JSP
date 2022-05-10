<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
	<form action="/JSP/JoinProc.do" method="post">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="userId"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="text" name="userPwd"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="userName"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input type="text" name="address"></td>
			
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email"></td>
		</tr>
		<tr >
			<td colspan=2><input	type="submit" value="회원가입"></td>	
		</tr>
	</form>
	</table>
</body>
</html>