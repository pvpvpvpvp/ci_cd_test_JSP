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
	아이디 : <%= userId %> PassWd : <%= userPwd %>
	<%if(userId.isEmpty() || userPwd.isEmpty()){
		RequestDispatcher rd = request.getRequestDispatcher("form.jsp");
		rd.forward(request, response);
	}%>
</body>
</html>