<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 생성 페이지</h1>
<%
	session.setAttribute("id", "abc");
	session.setAttribute("pw", "1234");
	session.setAttribute("age", 20);
	
	// 세션 유효기간 직접 설정시 get -> set
	session.setMaxInactiveInterval(-1);
%>
	<a href="showSession.jsp">세션 보기</a> <br>
	<a href="showSessionAll.jsp">모든 세션 보기</a> <br>
	<a href="infoSession.jsp">세션 정보 보기</a> <br>
	<a href="deleteSession.jsp">세션 제거</a>
</body>
</html>