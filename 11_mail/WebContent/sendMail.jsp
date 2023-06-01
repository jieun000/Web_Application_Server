<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메일 전송</h1>
	<form method="post" action="send.do">
		받는 사람: <input type="text" name="to"><br>
		제목: <input type="text" name="subject"><br>
		<textarea rows="10" cols="50" name="content"></textarea><br>
		<input type="submit" value="메일 전송">
	</form>
	${msg}
</body>
</html>