<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        ul{
            list-style:none;
            padding-left:0px;
        }

        .main_img{
            width: 500px;
        }
    </style>
</head>
<body>
    <%String taget = request.getParameter("taget")+".jsp"; 
    if(taget==null){ taget="home.jsp";}%>
	<table border="1">
		<tr>
			<td colspan="2"><jsp:include page="include/top.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td valign="top"><jsp:include page="include/menu.jsp"></jsp:include></td>
			<td valign="top"><jsp:include page="<%=taget %>"></jsp:include></td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="include/bottom.jsp"></jsp:include></td>
		</tr>
		
	</table>

</body>
</html>