<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%String cnt = request.getParameter("cnt"); 
	boolean joinBoolean = cnt.equals("1")? true:false;
	if(joinBoolean)
	{
		%>
		회원 가입이 정삭적으로 되었습니다.!
		<a href="loginFrm.jsp">로그인</a>
		<%
	}else{
		%>
		가입 실패!
		<a href="joinFrm.jsp">다시 회원가입</a>
		<%
	}
	%>
</body>
</html>