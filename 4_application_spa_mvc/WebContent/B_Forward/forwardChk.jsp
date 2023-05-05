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
	int age = Integer.parseInt(request.getParameter("age"));

	// 나이가 20 살 이상이면 접속페이지로 이동, 아니면 alert 접속불가 전페이지로 이동
	if(age < 20) {
%>
	<script>
		alert("접속불가");
		history.go(-1);
	</script>
<%
	} else {
		request.setAttribute("test", "성인");
		// 20살 이상이니까 접속페이지로 이동시키는 코드
		RequestDispatcher dispatcher = request.getRequestDispatcher("forwardResult.jsp");
		dispatcher.forward(request, response);
	}
%>
</body>
</html>