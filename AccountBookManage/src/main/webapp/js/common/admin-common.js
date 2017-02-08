/**
 * 공통
 */

//init
window.onload = function () {
	location.replace="";
}

//로그인
function sessionLogin() {
	location.href = "../../user/userLogin.do";
}

//로그아웃
function sessionLogout() {
	if (confirm("로그아웃 하시겠습니까?") == true){
		location.href = "../../sessionLogout.do";
	}else{
	    return;
	}
}
