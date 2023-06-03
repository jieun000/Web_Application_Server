<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		대화명: <input id="id" type="text" value="${param.id}" readonly>
		<button onclick="disconnect()">채팅 종료</button>
	</div>
	<div id="chatWindow"></div>
	<div>
		<input id="msg" type="text" onkeyup="enterKey()">
		<button id="senBtn" onclick="sendMsg()">전송</button>
	</div>
</body>
</html>