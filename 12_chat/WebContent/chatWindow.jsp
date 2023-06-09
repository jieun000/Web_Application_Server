<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.dm {
		color: red;
	}
	.myMsg {
		color: blue;
	}
	
</style>
</head>
<body>
	<div>
		대화명: <input id="id" type="text" value="${param.id}" readonly>
		<button onclick="disconnect()">채팅 종료</button>
	</div>
	<div id="chatWindow" style="border: 1px solid black; width: 280px; height: 350px; overflow: scroll;"></div>
	<div>
		<input id="msg" type="text" onkeyup="enterKey()">
		<button id="sendBtn" onclick="sendMsg()">전송</button>
	</div>
	
	<script src="chat.js"></script>
</body>
</html>