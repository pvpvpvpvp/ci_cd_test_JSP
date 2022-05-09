<%@page import="java.util.*"%>
<%@page import="org.bit.conan.BookBean"%>
<%@page import="java.nio.file.ReadOnlyFileSystemException"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<c:catch var="e">
		<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
	    String id = "scott";
	    String pass = "tiger";
	 	// 3. 오라클 서버 접속 객체 생성
	    Connection con = DriverManager.getConnection(url, id, pass);
	    // 4. sql 쿼리문을 실행하기 위한 객체 생성
	    String sql = "SELECT * FROM BOOK";
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		List<BookBean> books = new ArrayList<BookBean>();
		BookBean book = new BookBean();
		while(rs.next()){
			book= new BookBean(rs.getInt(1),rs.getString(2).replace("축구", "야구"),rs.getString(3),rs.getInt(4));
			books.add(book);
		}
		request.setAttribute("books", books);
		%>
		</c:catch>
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
					<c:out value="${book.title }"/>
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
</body>
</html>