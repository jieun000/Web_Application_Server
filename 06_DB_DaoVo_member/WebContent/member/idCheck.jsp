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
	<h1>중복 확인 페이지</h1>
	
	<c:if test="${result == 1}">
		${id}는 사용중인 아이디입니다.
	</c:if>
	<c:if test="${result == -1}">
		${id}는 사용 가능한 아이디입니다.
		<input type="button" value="사용" onclick="">
	</c:if>
	
	<script src="script/member.js"></script>
</body>
</html>