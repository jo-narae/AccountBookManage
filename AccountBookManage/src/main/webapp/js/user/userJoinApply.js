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
	
	var idArray = ["idText", "nameText", "passwordText", "passwordCheckText", "phoneText", "emailText", "cardinalText"];
	var valueArray = [id, name, password, passwordCheck, phoneNumber, email, cardinalNumber];

	//데이터 값 없는지 체크
	var JSONData = JSONCreate(idArray, valueArray);
	
	for (var item in JSONData) {
		messageDisplay(JSONData[item].value, JSONData[item].id)
	}
	
	//비밀번호 체크
	passwordValidationCheck(password, passwordCheck);
	
	//중복 체크
	overlapCheck(id, email);

}

function overlapCheck(_id, _email) {
	var JSONData = "{ \"id\" : \"" + _id + "\", \"email\" : \"" + _email + "\" }";
	JSONData = JSON.parse(JSONData);
	
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");

	$.ajax({
		type: "POST",
	    async: false,
		url : '../user/overlapCheck.ajax',
		data : JSONData,
	    beforeSend: function(xhr) {
	        // here it is
	        xhr.setRequestHeader(header, token);
	    },
	    success : function(data) {
			if(data.idCount > 0) { 				//아이디 중복 개수 있을 경우
				overlapMessage("idText");
			} else {							//아이디 중복 개수 없을 경우
				useableMessage("idText", _id);
			}
			if (data.emailCount > 0) { 			//이메일 중복 개수 있을 경우
				overlapMessage("emailText");
			} else {							//이메일 중복 개수 없을 경우
				useableMessage("emailText", _email);
			}
		}
	});
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

//중복 메세지
function overlapMessage(_id) {
	if(_id == "idText") {
		document.getElementById("idText").innerHTML = "아이디가 중복됩니다. 재입력해주세요.";
		document.getElementById("idText").style.display = "block";
	}
	if(_id == "emailText") {
		document.getElementById("emailText").innerHTML = "이메일이 중복됩니다. 재입력해주세요.";
		document.getElementById("emailText").style.display = "block";
	}
}

//사용가능 메세지
function useableMessage(_id, _value) {
	if(_id == "idText" && _value != "") {
		document.getElementById("idText").innerHTML = "아이디를 사용하셔도 됩니다.";
		document.getElementById("idText").style.display = "block";
	}
	if(_id == "emailText" && _value != "") {
		document.getElementById("emailText").innerHTML = "이메일을 사용하셔도 됩니다.";
		document.getElementById("emailText").style.display = "block";
	}
}

//안내 메세지 리셋
function messageReset() {
	document.getElementById("idText").innerHTML = "아이디를 입력해주세요.";
	document.getElementById("passwordCheckText").innerHTML = "비밀번호 확인을 입력해주세요.";
	document.getElementById("emailText").innerHTML = "이메일을 입력해주세요.";
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
