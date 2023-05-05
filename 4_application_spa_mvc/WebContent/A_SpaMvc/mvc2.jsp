<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- num만 잘 됨 -->
	<h1><%=request.getParameter("num")%></h1>
	<h1><%=request.getParameter("result")%></h1> <!-- num -->
</body>
</html>