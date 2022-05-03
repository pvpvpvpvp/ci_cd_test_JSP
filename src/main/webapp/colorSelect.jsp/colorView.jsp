<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background: <%=request.getParameter("color") %>">
<%request.setCharacterEncoding("UTF-8"); %>
	<%String name = request.getParameter("name"); %>
	<%String color = request.getParameter("color"); %>
	<% if(color.equals("red")){
	아이디 : %><%= name %>  은 : 붉은색 색상을 좋아합니다.!
	<%}%>
	<% if(color.equals("yellow")){
	아이디 : %><%= name %>  은 : 노랑색 색상을 좋아합니다.!
	<%}%>
	<% if(color.equals("green")){
	아이디 : %><%= name %>  은 : 초록색 색상을 좋아합니다.!
	<%}%>
	<%String[] colorRGB = color.split("");
		int colorR=Integer.parseInt(colorRGB[1], 16) +Integer.parseInt(colorRGB[2], 16);
		int colorG=Integer.parseInt(colorRGB[3], 16) +Integer.parseInt(colorRGB[4], 16);
		int colorB=Integer.parseInt(colorRGB[5], 16) +Integer.parseInt(colorRGB[6], 16);
	%>
		
	<%if(name.isEmpty() || color.isEmpty()){
		RequestDispatcher rd = request.getRequestDispatcher("colorSelect.jsp");
		rd.forward(request, response);
	}%>
</body>
</html>