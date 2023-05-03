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
	// 자바 코드로 인식함
	int a = 10;
	int b = 20;
%>
	<h1>${10+20}</h1>
	<h1><%=a+b%></h1>
</body>
</html>