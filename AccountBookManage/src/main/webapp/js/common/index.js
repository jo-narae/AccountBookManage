/**
 * 공통
 */

function roomList() {
	location.href = "./room/roomList.do?pageNum=1";
}

//내정보
function myInfo() {
	location.href = "./info/myInfo.do";
}

//로그아웃
function sessionLogin() {
	location.href = "./user/userLogin.do";
}

//로그아웃
function sessionLogout() {
	if (confirm("로그아웃 하시겠습니까?") == true){
		location.href = "./user/sessionLogout.do";
	}else{
	    return;
	}
}