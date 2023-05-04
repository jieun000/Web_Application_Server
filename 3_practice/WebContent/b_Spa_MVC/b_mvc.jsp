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
// Controller
	String age = request.getParameter("age");
	String category = request.getParameter("category");
	String[] colors = request.getParameterValues("chk_color");
	String str = ""; // 색상의 결과값을 저장하는 변수 (model)
	if( colors == null) {
		str = "없음";
	} else {
		for(String color : colors) {
			str = str + color + " ";
		}
		str += "입니다. ";
	}
%>
	<!-- View -->
	<h2><%=age%>세가 가장 많이 구매한 <%=category%>들을 조회합니다.</h2>
	<h3>선호하는 색상: <%=str%></h3>
</body>
</html>