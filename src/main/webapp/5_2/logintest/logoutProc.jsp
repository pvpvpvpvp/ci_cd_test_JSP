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
	if(session != null || session.getAttribute("userId")!=null){
		session.invalidate();
		out.print("로그아웃 작업이 완료됨");
		response.sendRedirect("loginFrm.jsp");
	}else{
		out.print("로그인 상태가 아님!");
		response.sendRedirect("loginFrm.jsp");
	}
	%>
</body>
</html>