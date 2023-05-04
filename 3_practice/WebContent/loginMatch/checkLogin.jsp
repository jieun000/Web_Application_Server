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
	String id = "teemo";
	String pw = "1234";
	
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("pw");
	
	System.out.println(user_id == id);
	System.out.println(user_id.equals(id));
	System.out.println(user_pw); 
	
	if(id.equals(user_id) && pw.equals(user_pw)) {
		response.sendRedirect("loginSuccess.jsp");
	} else {
		response.sendRedirect("loginForm.jsp");
	}
%>
</body>
</html>