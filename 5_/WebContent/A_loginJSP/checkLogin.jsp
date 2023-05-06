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
	String id = "user";
	String pw = "1234";
	
	String user_id = request.getParameter("id");
	
	if(id.equals(user_id) && pw.equals(request.getParameter("pw"))) {
		// 세션 생성
		session.setAttribute("id", user_id);		
		// 로그인 성공 페이지로 이동
		response.sendRedirect("loginMain.jsp");
	} else {
%>
	<script>
		alert("로그인 실패");
		history.go(-1);
	</script>
<%
		// 실패 -> 다시 로그인 페이지
		// response.sendRedirect("loginForm.jsp");
	}
%>
</body>
</html>