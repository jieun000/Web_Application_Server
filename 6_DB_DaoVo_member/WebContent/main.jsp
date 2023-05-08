<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 페이지</h1>
	<h3>${loginUser.name}(${loginUser.id})님 환영합니다.</h3>
	
	<input type="button" value="로그아웃" onclick="location.href='logout.do'">
	<input type="button" value="회원정보 수정" onclick="location.href='update.do?id=${loginUser.id}]'">
</body>
</html>