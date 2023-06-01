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
	String a = (String)request.getAttribute("name");
%>
	<h1>두번째 페이지</h1>
	페이지: <%=pageContext.getAttribute("name")%> <br>
	요청: <%=a%> <br>
	세션: <%=session.getAttribute("name")%> <br>
	어플리케이션: <%=application.getAttribute("name")%> <br>
	
	<a href="application_third.jsp">세 번째 페이지로</a>
</body>
</html>