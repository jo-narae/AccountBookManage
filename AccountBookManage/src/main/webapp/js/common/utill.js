/**
 * 유틸 공통
 */

//JSON 타입 생성
function JSONCreate(_valueArray, _idArray) {
	var itemLength = _valueArray.length - 1;
	var lastIndex = itemLength;
	var JSONData = "[";
	for (var item = 0; item < itemLength; item++) {
		JSONData += "{ \"id\" : \"" + _idArray[item] +"\", \"value\" : \"" + _valueArray[item] + "\"}, ";
	}
	JSONData += "{ \"id\" : \"" + _idArray[lastIndex] +"\", \"value\" : \"" + _valueArray[lastIndex] + "\"}]";
	
	//String형 JSON으로 변환
	JSONData = JSON.parse(JSONData);
	
	return JSONData;
}
