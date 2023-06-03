<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>채팅방 참여 페이지</h1>
	대화방: <input id="id" type="text">
	<button onclick="chatOpen()">채팅방 접속</button>
	<script>
		function chatOpen() {
			let id = document.querySelector('#id').value;
			// alert(id);
			if(id == '') {
				alert('대화명을 입력하세요.');
				return;
			}
			window.open("chatWindow.jsp?id=" + id, "+_blank", "width=300, height=450");
		}
	</script>
</body>
</html>