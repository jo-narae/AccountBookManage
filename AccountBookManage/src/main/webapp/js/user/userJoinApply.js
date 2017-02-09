/**
 * 회원가입 신청
 */

//유효성 체크
function validationCheck() {
	var frm = document.joinForm;
	var id = frm.id.value;															//아이디
	var name = frm.name.value;														//이름
	var password = frm.password.value;												//비밀번호
	var passwordCheck = frm.password_check.value;									//비밀번호 확인
	var phoneNumber = frm.phone_number.value;										//연락처
	var email = frm.email.value;													//이메일
	var cardinalNumber = document.getElementById("cardinal_number");
	cardinalNumber = cardinalNumber.options[cardinalNumber.selectedIndex].value;	//기수
	
	//영역 검사하기 위한 배열 배치
	var idArray = ["idText", "nameText", "passwordText", "passwordCheckText", "phoneText", "emailText", "cardinalText"];
	var valueArray = [id, name, password, passwordCheck, phoneNumber, email, cardinalNumber];
	var passArray = ["idPass", "namePass", "passwordPass", "passwordCheckPass", "phonePass", "emailPass", "cardinalPass"];

	//데이터 값 없는지 체크
	for (var item in idArray) {
		messageDisplay(valueArray[item], idArray[item], passArray[item]);
	}
	
	//비밀번호 체크
	passwordValidationCheck(password, passwordCheck);

	//중복 체크
	overlapCheck(id, email);

	//회원 가입
	if(validationSuccessCheck(passArray)) {
		frm.submit();
	}
}

//안내 메세지 감추거나 보이기
function messageDisplay(_value, _id, _pass) {
	messageReset();
	messageHide(_value, _id, _pass);
	messageShow(_value, _id, _pass);
}

//비밀번호 체크
function passwordValidationCheck(_password, _passwordCheck) {	
	if((_password != "" && _passwordCheck != "") && (_password != _passwordCheck)) { //비밀번호와 비밀번호 확인이 일치하지 않을 경우
			document.getElementById("passwordCheckText").innerHTML = "비밀번호와 다릅니다. 비밀번호를 다시 확인해주세요.";
			document.getElementById("passwordCheckText").style.display = "block";
	}
	if((_password != "" && _passwordCheck != "") && (_password == _passwordCheck)) {
		document.getElementById("passwordCheckPass").value = true;
	}
}

//중복 체크
function overlapCheck(_id, _email) {
	var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i; //정규식
	var _emailFormCheck = true;
	if(!re.test(_email)) {
		document.getElementById("emailText").innerHTML = "이메일 양식에 맞지 않습니다.";
		document.getElementById("emailText").style.display = "block";
		_emailFormCheck = false;
	}
	
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
				if(_emailFormCheck) {
					useableMessage("emailText", _email);
				}
			}
		}
	});
}

//유효성 완료 검사
function validationSuccessCheck(_passArray) {
	var itemLength = _passArray.length;
	var loginPass = false; // true일 경우 유효성 체크 통과, false일 경우 실패

	for (var item = 0; item < itemLength; item++) {
		var _id = _passArray[item].toString();
		if(document.getElementById(_id).value == "true") { //유효성 완료 검사
			loginPass = true;
		} else {
			loginPass = false;
			break;
		}
	}

	return loginPass;
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
		document.getElementById("idPass").value = true;
	}
	if(_id == "emailText" && _value != "") {
		document.getElementById("emailText").innerHTML = "이메일을 사용하셔도 됩니다.";
		document.getElementById("emailText").style.display = "block";
		document.getElementById("emailPass").value = true;
	}
}

//안내 메세지 리셋
function messageReset() {
	document.getElementById("idText").innerHTML = "아이디를 입력해주세요.";
	document.getElementById("passwordCheckText").innerHTML = "비밀번호 확인을 입력해주세요.";
	document.getElementById("emailText").innerHTML = "이메일을 입력해주세요.";
	
	document.getElementById("idPass").value = false;
	document.getElementById("passwordCheckPass").value = false;
	document.getElementById("emailPass").value = false;
}

//안내 메세지 감추기
function messageHide(_value, _id, _pass) {
	if(_id == "cardinalText") {
		if (_value != "전체") {
			document.getElementById(_id).style.display = "none";
			document.getElementById(_pass).value = true;
		}
		return;
	}
	if (_value != "") {
		document.getElementById(_id).style.display = "none";
		document.getElementById(_pass).value = true;
	}
}

//안내 메세지 보이기
function messageShow(_value, _id, _pass) {
	if(_id == "cardinalText") {
		if (_value == "전체") {
			document.getElementById(_id).style.display = "block";
			document.getElementById(_pass).value = false;
		}
		return;
	}
	if (_value == "") {
		document.getElementById(_id).style.display = "block";
		document.getElementById(_pass).value = false;
	}
}
