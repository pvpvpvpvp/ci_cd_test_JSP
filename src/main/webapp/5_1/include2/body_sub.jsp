<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String[] names = request.getParameterValues("name");
	for( String name:names){
		%>
		<li><%=java.net.URLDecoder.decode(name)%></li>	
		<%	
	}
			%>
</body>
</html>