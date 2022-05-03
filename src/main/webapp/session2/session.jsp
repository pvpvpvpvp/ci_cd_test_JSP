<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<%String userId = request.getParameter("userId"); %>
	<%String userPwd = request.getParameter("userPwd"); %>
	
	<% if(session.isNew()|| session.getAttribute("userId")==null){
		session.setAttribute("userId", userId);
		out.print("로그인 완료");
	}else{
		out.print("이미 로그인 되어있음! 완료");
	}
		%>
	아이디 : <%= userId %> PassWd : <%= userPwd %>
</body>
</html>