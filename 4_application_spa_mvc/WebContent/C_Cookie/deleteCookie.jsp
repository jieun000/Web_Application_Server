<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 삭제 페이지</h1>
<%
/* 	Cookie c = new Cookie("id", "");
	c.setMaxAge(0); // 유효기간 강제로 0으로 만들어 지우기
	response.addCookie(c); */
	
	Cookie[] cookies = request.getCookies();
	for(Cookie c : cookies) {
		c.setMaxAge(0);
		response.addCookie(c);
	}
%>
	<a href="showCookie.jsp">쿠키 목록 페이지</a>
</body>
</html>