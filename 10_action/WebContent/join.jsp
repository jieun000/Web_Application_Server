<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="">
		id: <input class="id" type="text" name="id" value="${id}">
		<input class="btn" type="button" value="중복검사" onclick=""> <br>
		<span class="chk"><</span> <br>
		pw: <input type="password" name="pw"> <br>
		이름: <input type="text" name="name" value="${name}"> <br>
		<input type="submit" value="가입">
	</form>
</body>
</html>