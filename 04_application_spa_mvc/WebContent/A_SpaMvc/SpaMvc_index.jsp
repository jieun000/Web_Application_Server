<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스파게티 코드</h1>
	<form method="get" action="spa.jsp">
		숫자: <input type="text" name="num">
		<input type="submit" value="전송">
	</form>
	
	<h1>MVC 모델 1</h1>
	<form method="get" action="mvc1.jsp">
		숫자: <input type="text" name="num">
		<input type="submit" value="전송">
	</form>
	
	<h1>MVC 모델 2</h1>
	<form method="get" action="mvc2.jsp">
		숫자: <input type="text" name="num">
		<input type="submit" value="전송">
	</form>
	
	<h1>MVC 서블렛</h1>
	<form method="get" action="mvc">
		숫자: <input type="text" name="num">
		<input type="submit" value="전송">
	</form>	
	
</body>
</html>