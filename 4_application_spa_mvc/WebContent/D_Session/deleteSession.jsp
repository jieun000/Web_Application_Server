<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 삭제 페이지</h1>
<%
	// 선택 세션만 지우기
	session.removeAttribute("pw");
	// 모든 세션 지우기
	// session.invalidate();
%>
	<a href="showSessionAll.jsp">세션 확인</a>
</body>
</html>