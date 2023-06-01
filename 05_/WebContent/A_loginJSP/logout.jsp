<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.invalidate(); // 세션 싹 다 제거
	// session.removeAttribute("id"); // 선택만 지움
	
	response.sendRedirect("loginForm.jsp");
%>
</body>
</html>