<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 	<h1>액션태그 연습(포워드)</h1>
	<h2><%=request.getParameter("name")%></h2>
	<h2><%=request.getAttribute("pw")%></h2> --%>
	
<%-- 	<h1>기본 방식(포워드)</h1>
	<h2>아이디: <%=request.getParameter("id")%></h2>
	<h2>권한: <%=request.getAttribute("s")%></h2> --%>
	
	<h1>액션태그(포워드)</h1>
	<h2>아이디: <%=request.getParameter("id")%></h2>
	<h2>권한: <%=URLDecoder.decode(request.getParameter("s"), "utf-8")%></h2>	
</body>
</html>