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
	String userId = null;
	String cheked = null;
	Cookie[] cookie = request.getCookies();
	if(cookie!=null){		
		for(int i=0; i<cookie.length;i++){
			if(cookie[i].getName().equals("userId")){
				userId=cookie[i].getValue();
			}
		}
	}
	if(userId==null){
		userId="";
	}
	%>
	<% if(session.isNew()|| session.getAttribute("userId")==null){ %>
	<form action="./loginProc.jsp" method="post">
	ID: <input type="text" name="userId" value="<%=userId %>"><input id="checkinfo1" type="checkbox" name="checked" <%=userId!=""?"checked":"" %>>아이디 기억<br>
	PW: <input type="password" name="userPwd"><br>
	<input	type="submit" value="로그인">
	</form>
	<%} else{ %>
	<a href="./loginProc.jsp">로그아웃!</a>
	<%} %>
</body>
</html>