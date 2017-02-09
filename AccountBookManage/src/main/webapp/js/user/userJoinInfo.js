/**
 * 가입신청 정보 확인
 */

//회원가입 여부 묻기
function joinApplyAgree() {
	var frm = document.joinForm;
	var id = frm.id.value;															//아이디
	var userName = frm.userName.value;												//이름
	var password = frm.password.value;												//비밀번호
	var phoneNumber = frm.phoneNumber.value;										//연락처
	var email = frm.email.value;													//이메일
	var cardinalNumber = frm.cardinalNumber.value;									//기수
	
	//true일 경우 submit
	if (confirm("입력하신 정보가 맞는지 확인하셨습니까?") == true){
		frm.submit();
	} else {
	    return;
	}
}