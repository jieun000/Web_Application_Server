function loginCheck() {
	if(document.frm.id.value.length == 0) {
		alert("아이디를 입력하세요.");
		frm.id.focus();
		
		return false;
	}
	if(document.frm.pw.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		frm.pw.focus();
		
		return false;
	}
	return true;
}

function idCheck() {
	if(document.frm.id.value.length == 0) {
		alert("아이디를 입력하세요.");
		frm.id.focus();
		
		return false;
	}
	let url = "idCheck.do?id=" + document.frm.id.value;
	window.open(url);
}

function idOk() {
	self.close();
}