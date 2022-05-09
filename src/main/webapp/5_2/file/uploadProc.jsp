<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest,
					com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
					java.util.*,
					java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String path = application.getRealPath("/upload");
		int size = 1024*1024*10; //10M
		
		try{
			MultipartRequest multi = new MultipartRequest(
					request,path,size,"UTF-8",new DefaultFileRenamePolicy());
			String fileInfo = multi.getParameter("fileInfo");
			Enumeration files = multi.getFileNames();
			String name = (String)files.nextElement();
			String file = multi.getFilesystemName(name);
			long fileSize = multi.getFile("file").length();
			String orgFile = multi.getOriginalFileName(name);
			String type = multi.getContentType(name);
			out.println("파일 정보 : "+fileInfo+"<br/>");
			out.println("파일명 : "+file+"<br/>");
			out.println("파일크기 : "+fileSize+"<br/>");
			out.println("원본 파일명 : "+orgFile+"<br/>");
			out.println("컨텐츠 유형 : "+type+"<br/>");
			out.println(path);
		}catch(Exception e){
			out.println("에러 : "+e);
		}
	%>
	<img src="file:///C:/Users/kim/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp2/wtpwebapps/JSP/upload/test.PNG"/>
</body>
</html>