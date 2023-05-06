<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="member" class="com.study.javabeans.MemberBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름: <jsp:getProperty property="name" name="member"/> <br>
	아이디: <jsp:getProperty property="id" name="member"/> <br>
	
	setProperty 작업 <br>
	<jsp:setProperty property="name" name="member" value="고길동"/> <br>
	<jsp:setProperty property="id" name="member" value="go"/> <br>
	
	설정 후 출력 <br>
	이름: <jsp:getProperty property="name" name="member"/> <br>
	아이디: <jsp:getProperty property="id" name="member"/> <br>
</body>
</html>