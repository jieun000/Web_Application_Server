<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1>
	<form method="post" action="login.do" name="frm">
		아이디: <input type="text" name="id"> <br>
		비밀번호: <input type="password" name="pw"> <br>
		<input type="submit" value="로그인" onclick="return loginCheck()">
		<input type="button" value="회원가입" onclick="location.href='join.do'">
	</form>
	<h3 style="color: red">${msg}</h3>
	
	<script src="../script/member.js"></script>
</body>
</html>