<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="joinProc.jsp" method="post">
		<table border="1">
			<tr>
				<th colspan="4">회원 가입 정보</th>
			</tr>
			<tr>
				<td colspan="1">아이디</td>
				<td colspan="1"><input type="text" name="userId"></td>
				<td colspan="1">비밀번호</td>
				<td colspan="1"><input type="text" name="userPwd"></td>
			</tr>
			<tr>
				<td colspan="1">이름</td>
				<td colspan="1"><input type="text" name="name"></td>
				<td colspan="1">이메일</td>
				<td colspan="1"><input type="text" name="email"></td>
			</tr>
			<tr>
				<td colspan="4"><input	type="submit" value="회원가입"></td>				
			</tr>
		</table>
	</form>
	
</body>
</html>