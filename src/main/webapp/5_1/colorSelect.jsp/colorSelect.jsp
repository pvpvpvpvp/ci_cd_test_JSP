<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="colorView.jsp"method="get">
		이름 : <input type="text" name="name"><p>
		색상 : <input type="color"><p>
		테스트 색상
			<select name="color">
				<option value="red">붉은색</option>
				<option value="yellow">노랑색</option>
				<option value="green">초록색</option>
			</select>
		<p>
		<input type="submit" value="보내기"> 
	</form>
</body>
</html>