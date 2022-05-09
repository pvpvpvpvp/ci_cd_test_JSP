<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setAttribute("name", "conan"); 
	String[] strings = {"conan","rose","ran"};
	List list = Arrays.asList(strings);
	out.print("두번째 요소 : "+list.get(1)+"<br>");
	request.setAttribute("list", list);
	%>
	<br>두번째 요소 : ${list[1] }
	<br>Literal : ${"Literal"} 
	<br> Operation : ${5>3}
	<br> Implicit Object : ${header["host"]}
	<br> 속성 "name" : <%=request.getAttribute("name")%>
	<br> 속성 "name" : ${name }
</body>
</html>