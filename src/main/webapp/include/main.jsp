<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td colspan="2"><jsp:include page="top.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td valign="top"><jsp:include page="left.jsp"></jsp:include></td>
			<td valign="top"><jsp:include page="right.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="botton.jsp"></jsp:include></td>
		</tr>
		
	</table>
</body>
</html>