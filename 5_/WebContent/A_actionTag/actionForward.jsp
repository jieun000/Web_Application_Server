<%@page import="java.net.URLEncoder"%>
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
	String select = request.getParameter("select");

	if(select.equals("user")) {
%>
	<jsp:forward page="forwardTest.jsp">
		<jsp:param value='<%=URLEncoder.encode("사용자", "utf-8")%>' name="s"/>
	</jsp:forward>
<%
	} else {
%>
	<jsp:forward page="forwardTest.jsp">
		<jsp:param value='<%=URLEncoder.encode("관리자", "utf-8")%>' name="s"/>
	</jsp:forward>
<%
	}
%>
</body>
</html>