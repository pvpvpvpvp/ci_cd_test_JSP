<%@page import="org.bit.conan.MembersDTO"%>
<%@page import="java.util.*"%>
<%@page import="java.nio.file.ReadOnlyFileSystemException"%>
<%@ page import="java.sql.*,javax.sql.*,javax.naming.*" %>
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
	InitialContext ic = new InitialContext();
		DataSource ds =(DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
		Connection conn = ds.getConnection();
		String userId = session.getAttribute("userId").toString();
		 /*업데이트 적기!*/
			    String strUpdate = "UPDATE MEMBER SET "+
			    	" user_id =?, user_pwd=?, user_name=?, phone=?,"+
			    	" address=?, email=?"+
			    	" WHERE user_id='"+userId+"'";
			    PreparedStatement pstmt = conn.prepareStatement(strUpdate);
			    
			    pstmt.setString(1, request.getParameter("userId"));
			    pstmt.setString(2, request.getParameter("userPwd"));
			    pstmt.setString(5, request.getParameter("address"));
			    pstmt.setString(6, request.getParameter("email"));
			    pstmt.setString(4, request.getParameter("phone"));
			    pstmt.setString(3, request.getParameter("userName"));
			    int cnt = pstmt.executeUpdate();
			    boolean updateSuccess = cnt>=1?true:false;
			    if(updateSuccess)
			    {
			    	response.sendRedirect("updateResult.jsp");
			    }
			    
			    
			    
			    String sql = "SELECT * FROM MEMBER WHERE user_id='"+userId+"'";
			    pstmt = conn.prepareStatement(sql);
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
		<caption>테이블에서 다시 읽어온 데이터</caption>
		<form action="./updateProc.jsp">
		  <tr>
		    <td>아이디</td>
		   	<td>${m.userId } </td>
		    <td>비밀번호</td>
		   	<td>${m.userPwd }</td>
		  </tr>
		  <tr>
		    <td>이름</td>
		    <td>${m.userName }</td>
		    <td>전화번호</td>
		    <td>${m.phone }</td>
		  </tr>
		  <tr>
		    <td>주소</td>
		    <td>${m.address }</td>
		    <td>이메일</td>
			<td>${m.email }</td>
		  </tr>
		  <tr>
		  	<td colspan="3"><c:out value="${date }"/></td>
		  </tr> 
		</form> 
		</table>
		<%rs.close(); pstmt.close(); conn.close();%>
</body>
</html>