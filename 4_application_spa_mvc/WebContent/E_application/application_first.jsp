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
//	String appPath = application.getContextPath();
//	String filePath = application.getRealPath("application.jsp");
	
	pageContext.setAttribute("name", "page");
	request.setAttribute("name", "request");
	session.setAttribute("name", "session");
	application.setAttribute("name", "application");
	
	System.out.println("첫번째 페이지");
	System.out.println("페이지: " + pageContext.getAttribute("name"));
	System.out.println("요청: " + request.getAttribute("name"));
	System.out.println("세션: " + session.getAttribute("name"));
	System.out.println("애플리케이션: " + application.getAttribute("name"));
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("application_second.jsp");
	dispatcher.forward(request, response);
%>
<!-- console창 확인 -->
</body>
</html>