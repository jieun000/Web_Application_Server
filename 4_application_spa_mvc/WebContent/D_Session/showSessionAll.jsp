<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>모든 세션 한번에 출력 페이지</h1>
<%
	Enumeration names = session.getAttributeNames(); // 리턴을 열거형
	
	while(names.hasMoreElements()) {
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		// String value = (String)session.getAttribute(name); toString과 같음
		
		out.print(name + "=" + value + "<br>");
	}
%>
</body>
</html>