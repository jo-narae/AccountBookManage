/**
 * 회원가입 신청
 */

//유효성 체크
function validationCheck() {
	var frm = document.joinFrm;
	var id = frm.id.value;															//아이디
	var name = frm.name.value;														//이름
	var password = frm.password.value;												//비밀번호
	var passwordCheck = frm.password_check.value;									//비밀번호 확인
	var phoneNumber = frm.phone_number.value;										//연락처
	var email = frm.email.value;													//이메일
	var cardinalNumber = document.getElementById("cardinal_number");
	cardinalNumber = cardinalNumber.options[cardinalNumber.selectedIndex].value;	//기수
	
	var valueArray = [id, name, password, passwordCheck, phoneNumber, email, cardinalNumber];
	var visualIDArray = ["idText", "nameText", "passwordText", "passwordCheckText", "phoneText", "emailText", "cardinalText"];

	//데이터 값 없는지 체크
	var JSONData = JSONCreate(valueArray, visualIDArray);
	
	for (var item in JSONData) {
		messageDisplay(JSONData[item].value, JSONData[item].id)
	}
	
	//비밀번호 체크
	passwordValidationCheck(password, passwordCheck);

}

//안내 메세지 감추거나 보이기
function messageDisplay(_value, _id) {
	messageReset();
	messageHide(_value, _id);
	messageShow(_value, _id);
}

//비밀번호 체크
function passwordValidationCheck(_password, _passwordCheck) {	
	if((_password != "" && _passwordCheck != "") && (_password != _passwordCheck)) { //비밀번호와 비밀번호 확인이 일치하지 않을 경우
			document.getElementById("passwordCheckText").innerHTML = "비밀번호와 다릅니다. 비밀번호를 다시 확인해주세요.";
			document.getElementById("passwordCheckText").style.display = "block";
	}
}

//안내 메세지 리셋
function messageReset() {
	document.getElementById("passwordCheckText").innerHTML = "비밀번호 확인을 입력해주세요.";
}

//안내 메세지 감추기
function messageHide(_value, _id) {
	if(_id == "cardinalText") {
		if (_value != "전체") {
			document.getElementById(_id).style.display = "none";
		}
		return;
	}
	if (_value != "") {
		document.getElementById(_id).style.display = "none";
	}
}

//안내 메세지 보이기
function messageShow(_value, _id) {
	if(_id == "cardinalText") {
		if (_value == "전체") {
			document.getElementById(_id).style.display = "block";
		}
		return;
	}
	if (_value == "") {
		document.getElementById(_id).style.display = "block";
	}
}
