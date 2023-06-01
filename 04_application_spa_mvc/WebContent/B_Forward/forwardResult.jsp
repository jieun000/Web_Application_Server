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
	String age = request.getParameter("age");
	String name = request.getParameter("name");
	
	String test = (String)request.getAttribute("test");
%>
	<h1><%=name%>(<%=age%>)님 환영합니다.</h1>
	<h2><%=test%></h2>
</body>
</html>