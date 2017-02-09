<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<ul class="breadcrumb">
	<li><a href="#">Home</a></li>
	<li>회원가입</li>
	<li>회원가입 신청</li>
</ul>
<h3 class="text-primary">
	<b>회원가입 신청</b>
</h3>
<input type="hidden" id="idPass" value="false" />
<input type="hidden" id="namePass" value="false" />
<input type="hidden" id="passwordPass" value="false" />
<input type="hidden" id="passwordCheckPass" value="false" />
<input type="hidden" id="phonePass" value="false" />
<input type="hidden" id="emailPass" value="false" />
<input type="hidden" id="cardinalPass" value="false" />
<div class="row">
	<div class="col-md-12">
		<form class="form-horizontal" role="form" name="joinForm" method="POST" action="userJoinInfo.do" >
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">아이디</label>
				</div>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id" name="id"
						placeholder="아이디를 입력해주세요.">
					<small class="text-red" id="idText" style="display:none;">아이디를 입력해주세요.</small>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">이름</label>
				</div>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="userName" name="userName"
						placeholder="이름을 입력해주세요.">
					<small class="text-red" id="nameText" style="display:none;">이름을 입력해주세요.</small>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">비밀번호</label>
				</div>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="password" name="password"
						placeholder="비밀번호를 입력해주세요.">
					<small class="text-red" id="passwordText" style="display:none;">비밀번호를 입력해주세요.</small>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">비밀번호 확인</label>
				</div>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="password_check"
						placeholder="비밀번호 확인을 입력해주세요.">
					<small class="text-red" id="passwordCheckText" style="display:none;">비밀번호 확인을 입력해주세요.</small>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">연락처</label>
				</div>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="phone_number" name="phoneNumber"
						placeholder="연락처를 입력해주세요.">
					<small class="text-red" id="phoneText" style="display:none;">연락처를 입력해주세요.</small>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">e-mail</label>
				</div>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="email" name="email"
						placeholder="이메일을 입력해주세요.">
					<small class="text-red" id="emailText" style="display:none;">이메일을 입력해주세요.</small>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">기수</label>
				</div>
				<div class="col-sm-10">
					<select class="form-control" id="cardinal_number" name="cardinalNumber">
						<option>전체</option>
						<c:forEach var="cardinal" items="${cardinalList}">
							<option value="${cardinal.cardinal_number}">${cardinal.cardinal_number}</option>
						</c:forEach>
					</select>
					<small class="text-red" id="cardinalText" style="display:none;">기수를 선택해주세요.</small>
				</div>
			</div>
			<div>
				<a class="btn btn-primary col-sm-12"
					style="margin-bottom: 5px;" href="javascript:validationCheck();">가입신청</a>
			</div>
			<input type="hidden" id="_csrf" name="${_csrf.parameterName}" value="${_csrf.token}">
		</form>
	</div>
</div>