<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메일 보관함</h1>
<%
	if(session.getAttribute("id") == null) {
		response.sendRedirect("loginForm.jsp");
	}
%>
	<%=session.getAttribute("id")%>님 환영합니다. <br>
	
	<form method="post" action="logout.jsp">
		<input type="submit" value="로그아웃">
	</form>
</body>
</html>