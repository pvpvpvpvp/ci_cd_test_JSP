<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	아이디 : <%= userId %> PassWd : <%= userPwd %>
	<%if(userId.isEmpty() || userPwd.isEmpty()){
		RequestDispatcher rd = request.getRequestDispatcher("./requestBrowser.jsp");
		rd.forward(request, response);
	}%>
	<p>클라이언트 IP : <%=request.getRemoteAddr() %>
	<p>요청 정보 길이 : <%=request.getContentLength() %>
	<p>요청 정보 인코딩 : <%=request.getCharacterEncoding() %>
	<p>콘텐츠 유형 : <%=request.getContentType() %>
	<p>프로토콜 : <%=request.getProtocol() %>
	<p>전송방식 : <%=request.getMethod() %>
	<p>URL : <%=request.getRequestURI() %>
	<p>콘텍스트 경로 : <%=request.getContextPath() %>
	<p>서버이름: <%=request.getServerName() %>
	<p>서버포트 : <%=request.getServerPort() %>
	<p>쿼리문 : <%=request.getQueryString() %>
</body>
</html>