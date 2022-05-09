<%@page import="java.util.*"%>
<%@page import="java.nio.file.ReadOnlyFileSystemException"%>
<%@ page import="java.sql.*,javax.sql.*, javax.naming.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.bit.conan.BookBean"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	InitialContext ic = new InitialContext();
	DataSource ds =(DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
	Connection conn = ds.getConnection();
	
	String sql = "SELECT * FROM BOOK";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	List<BookBean> books = new ArrayList<BookBean>();
	BookBean book = new BookBean();
	while(rs.next()){
		book= new BookBean(rs.getInt(1),rs.getString(2).replace("축구", "야구"),rs.getString(3),rs.getInt(4));
		books.add(book);
	}
	request.setAttribute("books", books);
	%>
	<table border="1">
		<tr>
			<th>
				BOOKID
			</th>
			<th>
				BOOK NAME
			</th>
			<th>
				PUBLISHER
			</th>
			<th>
				PRICE
			</th>	
			<td>
				
			</td>
		</tr>
		<c:forEach var="book" items="${books }">
		<tr>
			<td>
				<c:out value="${book.bookid }"/>
			</td>
			<td>
				<a href="forward.jsp?bookid=${book.bookid }&title=${book.title }&publisher=${book.publisher }&price=${book.price }"><c:out value="${book.title }"/></a>		
			</td>
			<td>
				<c:out value="${book.publisher }"/>
			</td>
			<td>
				<c:out value="${book.price }"/>
			</td>
			<td>
				<form action="./delete.jsp">
					<input type="hidden" name="bookid" value="${book.bookid}">
					<input type="submit" value="삭제">
				</form>
			</td>
		</tr>
		</c:forEach>
	</table>
	<%rs.close(); pstmt.close(); conn.close();%>
</body>
</html>