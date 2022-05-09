<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=request.getParameter("name") %>
	<jsp:include page="body_sub.jsp" flush="false">
		<jsp:param name="name" value='<%=java.net.URLEncoder.encode("장미") %>'/>
	</jsp:include>
	후 파라미터!
	<%= request.getParameter("name") %>
</body>
</html>