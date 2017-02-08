/**
 * 로그인 화면
 */

//로그인 실패시 처리
window.onload = function () {
	var login_fail = document.getElementById("login_fail").value;
	if(login_fail) {
		alert("로그인 정보가 틀렸습니다. 다시 입력해주세요.");
	}
}

//로그인
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
		frm.submit();
	}
};

//회원가입
function userJoinApply() {
	location.href = "../user/userJoinApply.do";
}