<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	int global = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int local = 0;
	out.print("global: " + ++global);
%>
	<br>
<%	// out.print("<br>");
	out.print("local: " + ++local);
%> 
</body>
</html>