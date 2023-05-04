<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp"%>
	<h1>여기는 메인 페이지</h1>
<%
	out.print("main");
	/* int page = 1; 내장 객체로 존재하기에 빨간 줄 */
%>
<%@ include file="footer.jsp"%>
</body>
</html>