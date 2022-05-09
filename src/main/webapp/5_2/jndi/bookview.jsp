<%@page import="java.util.*"%>
<%@page import="org.bit.conan.BookBean"%>
<%@page import="java.nio.file.ReadOnlyFileSystemException"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*,javax.sql.*, javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<caption>파리미터 값 읽기</caption>
		<tr>
			<th>책 제목</th>
			<td>${book.title  } </td>
		</tr>
		<tr>
			<th>출판사</th>
			<td>${book.publisher  }</td>
		</tr>
		<tr>
			<th>가 격</th>
			<td>${book.price  }</td>
		</tr>
		<tr>
			<th colspan=2><a href="jndiEx.jsp">목록</a></th>
		</tr>	
	</table>
	
	<%
	InitialContext ic = new InitialContext();
	DataSource ds =(DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
	Connection conn = ds.getConnection();
	
	String sql = "SELECT * FROM BOOK WHERE bookid='"+request.getParameter("bookid")+"'";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	BookBean book = new BookBean();
	while(rs.next()){
		book= new BookBean(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));
	}
	request.setAttribute("dbbook", book);
	%>
	
	<table border="1">
		<caption>ID값으로 다시 데이터 베이스에서 읽기</caption>
		<tr>
			<th>책 제목</th>
			<td>${dbbook.title  }</td>
		</tr>
		<tr>
			<th>출판사</th>
			<td>${dbbook.publisher  }</td>
		</tr>
		<tr>
			<th>가 격</th>
			<td>${dbbook.price  }</td>
		</tr>
		<tr>
			<th colspan=2><a href="jndiEx.jsp">목록</a></th>
		</tr>	
	</table>
	<%rs.close(); pstmt.close(); conn.close();%>
</body>
</html>