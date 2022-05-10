<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(session.isNew()|| session.getAttribute("userId")==null){ %>
	<form action="/JSP/LoginProc.do" method="post">
	ID: <input type="text" name="userId" value=""><br>
	PW: <input type="password" name="userPwd" value=""><br>
	<input	type="submit" value="로그인">
	</form>
	<a href="joinFrm.jsp">회원가입 하로가기</a>
	<%} else{
		response.sendRedirect("loginResult.jsp");
	} %>
	<script type="text/javascript">
	
	</script>
</body>
</html>