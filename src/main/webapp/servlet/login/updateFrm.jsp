<%@page import="org.bit.conan.MembersDTO"%>
<%@page import="java.util.*"%>
<%@page import="java.nio.file.ReadOnlyFileSystemException"%>
<%@ page import="java.sql.*,javax.sql.*, javax.naming.*" %>
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
		<caption>데이터 수정 폼</caption>
		<form action="UpdateProc.do" method="post">
		  <tr>
		    <td>아이디</td>
		   	<td><input type="text" name="userId" value="${m.userId }"> </td>
		    <td>비밀번호</td>
		   	<td><input type="text" name="userPwd" value="${m.userPwd }"> </td>
		  </tr>
		  <tr>
		    <td>이름</td>
		    <td><input type="text" name="userName" value="${m.userName }"> </td>
		    <td>전화번호</td>
		    <td><input type="text" name="phone" value="${m.phone }"> </td>
		  </tr>
		  <tr>
		    <td>주소</td>
		    <td><input type="text" name="address" value="${m.address }"> </td>
		    <td>이메일</td>
			<td><input type="text" name="email" value="${m.email }"> </td>
		  </tr>
		  <tr>
		  	<td colspan="3"><c:out value="${date }"/></td>
		  	<td colspan="1"><input type="submit" value="수정하기"></td>
		  </tr> 
		</form> 
		</table>
</body>
</html>