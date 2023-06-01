<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="board" class="com.study.javabeans.boardBean"/>
<jsp:setProperty property="*" name="board"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>입력된 정보</h1>
	작성자: <jsp:getProperty property="name" name="board"/> <br>
	비밀번호: <jsp:getProperty property="pw" name="board"/> <br>
	이메일: <jsp:getProperty property="email" name="board"/> <br>
	제목: <jsp:getProperty property="title" name="board"/> <br>
	내용: <pre>
			<jsp:getProperty property="content" name="board"/>
		</pre>
</body>
</html>