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
	String age = request.getParameter("age");
	String category = request.getParameter("category");
	String[] colors = request.getParameterValues("chk_color");
	System.out.println(colors);
%>
	<h2><%=age%>세가 가장 많이 구매한 <%=category%>들을 조회합니다.</h2>
	<b>가장 선호하는 색상은</b>
<%
	if(colors == null) {
%>
	<b>따로 없습니다.</b>
<%
	} else {
		for(String color : colors) {
%>
	<b><%=color%></b>
<%
		}
%>
	<b> 입니다.</b>
<%
	}
%>
</body>
</html>