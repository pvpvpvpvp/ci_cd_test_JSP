<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
		<jsp:useBean class="org.bit.conan.MembersDTO" id="member" scope="application"/>
		<jsp:setProperty property="*" name="member"/>
	<table border="1">
			<tr>
				<td colspan="1">아이디</td>
				<td colspan="1"><jsp:getProperty property="userId" name="member"/></td>
				<td colspan="1">비밀번호</td>
				<td colspan="1"><jsp:getProperty property="userPwd" name="member"/></td>
			</tr>
			<tr>
				<td colspan="1">이름</td>
				<td colspan="1"><jsp:getProperty property="name" name="member"/></td>
				<td colspan="1">이메일</td>
				<td colspan="1"><jsp:getProperty property="email" name="member"/></td>
			</tr>
		</table>
</body>
</html>