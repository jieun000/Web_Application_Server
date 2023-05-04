<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%!선언문 이거 쓰려면 이거만 스고 밑에 request~ 따로 써야함
	int num1;
	int num2; --%>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
%>
	<h1>두 수의 합: <%=num1 + num2%></h1>
	<a href="add_index.jsp">뒤로가기</a>
</body>
</html>