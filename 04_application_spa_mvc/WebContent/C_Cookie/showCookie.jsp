<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 출력 페이지</h1>
<%
	Cookie[] cookies = request.getCookies();
	for(Cookie c : cookies) {
		out.print(c.getName() + "=" + c.getValue() + "<br>");
		// out.print("유효기간: " + c.getMaxAge() + "<br>");
	}
%>
	<a href="mapleCookie.jsp">쿠키 생성 페이지</a>
	<a href="deleteCookie.jsp">쿠키 삭제 페이지</a>
</body>
</html>