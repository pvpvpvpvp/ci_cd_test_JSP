<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	관리자 아이디 : <%=application.getInitParameter("adminId") %><p>
	관리자 비밀번호 : <%=application.getInitParameter("adminPwd") %><p>
	<%=application.getServerInfo() %><p>
	<%=application.getMajorVersion() %>, <%=application.getMinorVersion() %><p>
	URL : <%=application.getRealPath("/") %><p>
	<h3>/jspApps 리스트</h3>
	<% java.util.Set<String> list =application.getResourcePaths("/");
	if(list != null){
		Object[] obj = list.toArray();
		for(int i=0; i<obj.length;i++){
			out.print(obj[i]+"<br>");
		}
	}
	%>
	
</body>
</html>