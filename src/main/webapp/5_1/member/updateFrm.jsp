<%@page import="org.bit.conan.MembersDTO"%>
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
	<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
		    String id = "scott";
		    String pass = "tiger";
		 	// 3. 오라클 서버 접속 객체 생성
		    Connection con = DriverManager.getConnection(url, id, pass);
		    PreparedStatement pstmt;
		    String sql = "SELECT * FROM MEMBER WHERE user_id='1'";
		    pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			MembersDTO m = new MembersDTO();
			String date ="";
			while(rs.next()){
		m.setUserId(rs.getString(2));
		m.setUserPwd(rs.getString(3));
		m.setAddress(rs.getString(4));
		m.setEmail(rs.getString(5));
		date=rs.getString(6);
		m.setPhone(rs.getString(7));
		m.setUserName(rs.getString(8));
			}
			request.setAttribute("date", date);
			request.setAttribute("m", m);
	%>
	    <table border="1">
			<caption>데이터 수정 폼</caption>
			<form action="./updateProc.jsp">
			  <tr>
			    <td>아이디</td>
			   	<td><input type="text" name="userId" value="${m.userId }"> </td>
			    <td>비밀번호</td>
			   	<td><input type="text" name="userPwd" value="${m.userPwd }"> </td>
			  </tr>
			  <tr>
			    <td>이름</td>
			    <td><input type="text" name="userName" value="${m.userName }"> </td>
			    <td>전화번호</td>
			    <td><input type="text" name="phone" value="${m.phone }"> </td>
			  </tr>
			  <tr>
			    <td>주소</td>
			    <td><input type="text" name="address" value="${m.address }"> </td>
			    <td>이메일</td>
				<td><input type="text" name="email" value="${m.email }"> </td>
			  </tr>
			  <tr>
			  	<td colspan="3"><c:out value="${date }"/></td>
			  	<td colspan="1"><input type="submit" value="수정하기"></td>
			  </tr> 
			</form> 
			</table>
</body>
</html>