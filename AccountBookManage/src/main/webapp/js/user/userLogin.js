//로그인 실패 여부 체크
window.onload = function () {
	//onload 영역
}

//로그인 유효성 체크
function userLoginCheck() {
	var frm = document.loginFrm
	var user_id = frm.id.value;
	var user_password = frm.password.value;

	if (user_id == "") {
		alert("아이디를 입력해주세요.");
		return;
	} else if (user_password == "") {
		alert("비밀번호를 입력해주세요.");
		return;
	} else {
		frm.action="sessionLogin.do";//이동할 페이지
		frm.method="post";//POST방식
		frm.submit();
	}
};