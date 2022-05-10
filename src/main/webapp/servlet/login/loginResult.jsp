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
	try{
		String userId = session.getAttribute("userId").toString();
		out.print(userId+"님 안녕하세요!");%>
			<br/><a href="/JSP/UpdateProc.do">회원정보 수정</a><p>
			<%
	}catch(Exception e){
		response.sendRedirect("/JSP/servlet/login/loginFrm.jsp");
	}
	 %>
		
</body>
</html>