<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원정보 수정</h1>
	<form method="post" action="update.do">
		이름: <input type="text" name="name" value="${vo.name}"> <br>
		아이디: <input type="text" name="id" value="${vo.id}"> <br>
		비밀번호: <input type="password" name="pw" value="${vo.pw}"> <br>
		이메일: <input type="text" name="email" value="${vo.email}"> <br>
		전화번호: <input type="text" name="phone" value="${vo.phone}"> <br>
		권한: 
		<c:choose>
			<c:when test="${vo.admin == 0}">
				<input type="radio" name="admin" value="0" checked>일반회원
				<input type="radio" name="admin" value="1">관리자
			</c:when>
			<c:otherwise>
				<input type="radio" name="admin" value="0">일반회원
				<input type="radio" name="admin" value="1" checked>관리자
			</c:otherwise>>
		</c:choose>
		<input type="submit" value="수정">
	</form>
</body>
</html>