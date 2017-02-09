/**
 * 가입신청 정보 확인
 */

//모델 데이터 값이 정확히 들어왔는지 체크
function joinApplyAgree() {
	var frm = document.joinForm;
	var id = frm.id.value;															//아이디
	var userName = frm.userName.value;												//이름
	var password = frm.password.value;												//비밀번호
	var phoneNumber = frm.phoneNumber.value;										//연락처
	var email = frm.email.value;													//이메일
	var cardinalNumber = frm.cardinalNumber.value;									//기수
	
	var userJoin = true;															//가입 가능 여부
	
	//데이터 값 체크를 위한 배열 배치
	var valueArray = [id, userName, password, phoneNumber, email, cardinalNumber];

	//데이터 값 없는지 체크
	for (var item in valueArray) {
		if(valueArray[item] == null || valueArray[item] == "") {
			alert("데이터에 이상이 발생했습니다. 이전 화면으로 돌아가서 다시 작성해주세요.");
			userJoin = false;
			break;
		}
	}
	
	//데이터 이상 없음 -> 회원가입 진행
	if(userJoin) {
		frm.submit();
	}
}