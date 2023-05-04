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
<%
	Enumeration<String> e = request.getParameterNames();

	while(e.hasMoreElements()) {
		out.print(e.nextElement() + "<br>");
	}
%>
	값: <%=request.getParameter("abc")%> <br>
	이름: <%=request.getParameterNames()%> <br>
	컨텍스트 패스: <%=request.getContextPath()%> <br>
	요청 방식: <%=request.getMethod()%> <br>
	요청 URL: <%=request.getRequestURI()%> <br>
	서버 이름: <%=request.getServerName()%> <br>
	프로토콜: <%=request.getProtocol()%>
</body>
</html>