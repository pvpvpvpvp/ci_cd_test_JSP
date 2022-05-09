<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.bit.conan.Members"%>
<%@page import="java.util.*"%>
<%@page import="java.nio.file.ReadOnlyFileSystemException"%>
<%@page import="java.sql.*"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*,javax.sql.*, javax.naming.*" %>
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
	<%
	InitialContext ic = new InitialContext();
	DataSource ds =(DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
	Connection conn = ds.getConnection();
	
	String sql = "SELECT * FROM MEMBER WHERE user_id='"+userId+"'"+
				" AND user_pwd='"+userPwd+"'";
    PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	boolean rsIsEmpty = rs.next();
    %>
    <%System.out.print("userId : "+userId); %>
    
    <%rs.close(); pstmt.close(); conn.close();%>
    
	<% if(session.isNew()|| session.getAttribute("userId")==null&&rsIsEmpty){
		session.setAttribute("userId", userId);
	}
	response.sendRedirect("loginResult.jsp");
	%>
</body>
</html>