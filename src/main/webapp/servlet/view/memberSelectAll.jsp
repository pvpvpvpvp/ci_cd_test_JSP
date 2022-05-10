<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<caption>SELECT ALL</caption>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>이메일</th>
			<th>등록일</th>
		</tr>
		<c:forEach var="member" items="${members }" >
		<tr>
			<td>${member.userId }</td>
			<td>${member.userPwd }</td>
			<td>${member.userName }</td>
			<td>${member.phone }</td>
			<td>${member.address }</td>
			<td>${member.email }</td>
			<td>${member.regDate }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>