<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	int total = 0; // 누적된 숫자를 저장하는 변수
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  int num = Integer.parseInt(request.getParameter("num"));
	total += num; // total = total + num;
%>
	<h1>누적된 숫자: <%=total%></h1>
	<a href="add_index.jsp">뒤로가기</a>
</body>
</html>