<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(request.getMethod().equals("POST")){ %>
	<%request.setCharacterEncoding("UTF-8"); %>
	<%String userId = request.getParameter("userId"); %>
	<%String userPwd = request.getParameter("userPwd"); %>
	
	<% if(session.isNew()|| session.getAttribute("userId")==null){
		session.setAttribute("userId", userId);
		out.print("로그인 완료");%>
		<a href="loginForm.jsp">돌아가기!</a><p>
		<%
	}else{
		%>
		<a href="loginForm.jsp">돌아가기!</a><p>
		<%
		out.print("이미 로그인 되어있음! 완료");
	}
		%>
	아이디 : <%= userId %> PassWd : <%= userPwd %>
	<%} else if (request.getMethod().equals("GET")){
		if(session != null || session.getAttribute("userId")!=null){
			session.invalidate();
			out.print("로그아웃 작업이 완료됨");
			%>
			<a href="loginForm.jsp">돌아가기!</a>
			<%
		}else{
			out.print("로그인 상태가 아님!");
		}
	}%>
</body>
</html>