<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 	예전 방식 <br>
	아이디: <%=request.getParameter("id")%> <br>
	비밀번호: <%=request.getParameter("pw")%> <br>
	비교: <%=request.getParameter("id") == "user"%> <br>
	비교2: <%=request.getParameter("id").equals("user")%> <br><br> --%>
	
	표현언어(EL) <br>
	아이디: ${param.id} <br>
	비밀번호: ${param["pw"]}<br>
	비교: ${param.id == "user"} <br>
</body>
</html>