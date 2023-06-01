<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>기존 방식</h2>
	<form method="get" action="forward.jsp">
		아이디: <input type="text" name="id"> <br>
		비밀번호: <input type="password" name="pw"> <br>
		<input type="radio" name="select" value="user"> 사용자
		<input type="radio" name="select" value="admin"> 관리자 <br>
		<input type="submit" value="전송">
	</form>
	
	<h2>액션태그 방식</h2>
	<form method="get" action="actionForward.jsp">
		아이디: <input type="text" name="id"> <br>
		비밀번호: <input type="password" name="pw"> <br>
		<input type="radio" name="select" value="user"> 사용자
		<input type="radio" name="select" value="admin"> 관리자 <br>
		<input type="submit" value="전송">
	</form>	
</body>
</html>