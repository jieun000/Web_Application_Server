<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 출력 페이지</h1>
<%
	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");
	Integer age = (Integer)session.getAttribute("age");
%>
	id: <%=id%> <br>
	pw: <%=pw%> <br>
	age: <%=age%>
</body>
</html>