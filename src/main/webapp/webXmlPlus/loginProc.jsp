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
	<%String checked = request.getParameter("checked"); %>
	<%String adminId = application.getInitParameter("adminId"); %>)
	<%String adminPwd = application.getInitParameter("adminPwd"); %>
	
	<% if(session.isNew()|| session.getAttribute("userId")==null && userId.equals(adminId)&& userPwd.equals(adminPwd)){
		session.setAttribute("userId", userId);
		out.print("로그인 완료");%>
		<% 
		Cookie cookie = new Cookie("userId",userId);
		if(checked!=null)
		{
			cookie.setMaxAge(3600);
			response.addCookie(cookie);
		}else{
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		%>
		<a href="loginForm.jsp">돌아가기!</a><p>
		<%
	}else{
		%>
		<a href="loginForm.jsp">돌아가기!</a><p>
		<%
		out.print("<script>alert('아이디 혹은 비밀번호 불일치'); history.back();</script>");
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