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

		<c:catch>
			<%
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
		    String id = "scott";
		    String pass = "tiger";
		 	// 3. 오라클 서버 접속 객체 생성
		    Connection con = DriverManager.getConnection(url, id, pass);
		    // 4. sql 쿼리문을 실행하기 위한 객체 생성
		    Statement statemt = con.createStatement();
		    int cnt;
		    String sql = "DELETE FROM book WHERE bookid="+request.getAttribute("bookid");
		    cnt = statemt.executeUpdate(sql);
			%>
		</c:catch>
</body>
</html>