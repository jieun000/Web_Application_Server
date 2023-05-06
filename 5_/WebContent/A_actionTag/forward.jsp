<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%
	request.setAttribute("pw", "123");

	RequestDispatcher dispatcher = request.getRequestDispatcher("forwardTest.jsp");
	dispatcher.forward(request, response);
	// 아래와 같음
%>
	<jsp:forward page="forwardTest.jsp"></jsp:forward> --%>
	
<%
	String select = request.getParameter("select");

	if(select.equals("user")) {
		request.setAttribute("s", "사용자");
	} else {
		request.setAttribute("s", "관리자");
	}
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("forwardTest.jsp");
	dispatcher.forward(request, response);
%>
</body>
</html>