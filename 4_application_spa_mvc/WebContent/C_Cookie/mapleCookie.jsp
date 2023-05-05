<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 생성 페이지</h1>
<%
	// Cookie c = new Cookie("id", "jsp");
	Cookie c = new Cookie("name", "abc");
	// c.setMaxAge(expiry); // 유효기간
	// c.setMaxAge(365 * 24 * 60 * 60); // 일년짜리
	// c.setMaxAge(2 * 60 * 60);
	
	Cookie c2 = new Cookie("age", "22");
	Cookie c3 = new Cookie("id", "qwer");
	
	// c2.setPath("/showCookie.jsp"); // 여기서만 쓸 수 있게 설정
	// c2.setPath("/폴더명/");
	
	response.addCookie(c);
	// response.addCookie(new Cookie("pw", "1234"));
	response.addCookie(c2);
	response.addCookie(c3);
	
	// response.addCookie(new Cookie("pw", "1234"));
%>
	<a href="showCookie.jsp">쿠키 목록 페이지</a>
</body>
</html>