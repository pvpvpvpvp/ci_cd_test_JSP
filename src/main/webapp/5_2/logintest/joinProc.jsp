<%@page import="org.bit.conan.MembersDTO"%>
<%@ page import="java.sql.*,javax.sql.*,javax.naming.*" %>
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
	<jsp:useBean class="org.bit.conan.MembersDTO" id ="member">
		<jsp:setProperty property="*" name="member"/>
			<table border="1">
			<caption>사용자가 입력한 데이터</caption>
			  <tr>
			    <td>아이디</td>
			    <td><jsp:getProperty property="userId" name="member"/></td>
			    <td>비밀번호</td>
			    <td><jsp:getProperty property="userPwd" name="member"/></td>
			  </tr>
			  <tr>
			    <td>이름</td>
			    <td><jsp:getProperty property="userName" name="member"/></td>
			    <td>전화번호</td>
			    <td><jsp:getProperty property="phone" name="member"/></td>
			  </tr>
			  <tr>
			    <td>주소</td>
			    <td><jsp:getProperty property="address" name="member"/></td>
			    <td>이메일</td>
			    <td><jsp:getProperty property="email" name="member"/></td>
			  </tr>
			</table>
		</jsp:useBean>
		
		<%
		InitialContext ic = new InitialContext();
		DataSource ds =(DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
		Connection conn = ds.getConnection();
	    // 4. sql 쿼리문을 실행하기 위한 객체 생성
	    String strInsert = "INSERT INTO member(user_id,user_pwd,address,email,phone,user_name)\r\n" +
                    " VALUES(?,?,?,?,?,?)";
	    PreparedStatement pstmt = conn.prepareStatement(strInsert);
	    pstmt.setString(1, request.getParameter("userId"));
	    pstmt.setString(2, request.getParameter("userPwd"));
	    pstmt.setString(3, request.getParameter("address"));
	    pstmt.setString(4, request.getParameter("email"));
	    pstmt.setString(5, request.getParameter("phone"));
	    pstmt.setString(6, request.getParameter("userName"));
	    int cnt = pstmt.executeUpdate();
	    if(cnt==1){
	    	%>
	    	<jsp:forward page="joinResult.jsp?cnt=1"/>
	    	<%
	    }else{
	    	%>
	    	<jsp:forward page="joinResult.jsp?cnt=0"/>
	    	<%
	    }
		%>
		<% pstmt.close(); conn.close();%>
</body>
</html>