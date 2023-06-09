const url = "ws://localhost:8081/chat/chatServer";
let webSocket = new WebSocket(url);
let chatWindow; // 채팅창
let msg; // 메세지
let id; // 아이디

window.onload = function() {
	chatWindow = document.querySelector("#chatWindow");
	msg = document.querySelector("#msg");
	id = document.querySelector("#id");
}

// 메세지 전송 함수
function sendMsg() {
	chatWindow.innerHTML += "<div class='myMsg'>" + msg.value + "</div>";
	// webSocket.send(id.value + " : " + msg.value);
	// msg.value = ''; // 다시 빈 칸으로 만들기 위함
}

// 서버 연결 종료
function disconnect() {
	webSocket.close(); // 채팅 서버 연결 종료
	// chatWindow.innerHTML += "채팅에서 나감<br>"
}

function enterKey() {
	if(window.event.keyCode == 13) { // 13=엔터
		sendMsg();
	}
}

// 채팅 서버 연결
webSocket.onopen = function() {
	chatWindow.innerHTML += "채팅방에 연결<br>";
}
// 채팅 서버 종료
webSocket.onclose = function() {
	chatWindow.innerHTML += "채팅에서 나감<br>";
}
// 에러 발생 시
webSocket.onerror = function(event) {
	alert(event.data);
	chatWindow.innerHTML += "채팅 서버 에러 발생<br>";
}

webSocket.onmessage = function(event) {
	// alert(event.data);
	let rMsg = event.data.split(":");
	// console.log(rMsg);
	let sender = rMsg[0]; // 보낸 사람 대화명
	let content = rMsg[1]; // 받은 메세지
	let id = document.querySelector("#id").value; // 내 대화명
	
	if(content != '') {
		// DM일 경우
		if(content.match('/')) {
			// 내 대화명과 일치하는 경우에만 표시
			if(content.match('/' + id)) {
				let temp = content.replace('/' + id, sender + '[DM] : ');
				chatWindow.innerHTML += "<div class='dm'>" + temp + "</div>";
			} 
		} 
		// DM이 아닐 경우
		else { 
			chatWindow.innerHTML += "<div>" + sender + " : " + content + "</div>";
		}
	}
	
}
