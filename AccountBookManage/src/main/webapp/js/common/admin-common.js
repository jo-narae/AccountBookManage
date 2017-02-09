/**
 * 관리자 페이지 공통
 */

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

//입금 관리
function depositList() {
	location.href = "../../admin/deposit/depositList.do?pageNum=1";
}

//출금 관리
function withdrawMannageList() {
	location.href = "../../admin/withdraw/withdrawMannageList.do?pageNum=1";
}

//신청 목록
function withdrawApply() {
	location.href = "../../withdraw/withdrawApplyList.do";
}

//금전 출납부
function accountBookList() {
	location.href = "../../accountbook/accountBookList.do";
}

//마이 페이지
function myPage() {
	location.href = "../../mypage/myPage.do";
}

//권한 관리
function authorityManage() {
	location.href = "../../admin/authority/authorityManage.do";
}