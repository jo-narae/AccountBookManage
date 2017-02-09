<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<ul class="breadcrumb">
	<li><a href="#">Home</a></li>
	<li>회원가입</li>
	<li>가입신청 정보 확인</li>
</ul>
<h3 class="text-primary">
	<b>가입신청 정보 확인</b>
</h3>
<div class="row">
	<div class="col-md-12">
		<form class="form-horizontal" role="form" name="joinForm" method="POST" action="userJoinReposit.do" >
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">이름</label>
				</div>
				<div class="col-sm-10">${userName}</div>
			</div>
			<div class="form-group" draggable="true">
				<div class="col-sm-2">
					<label class="control-label">아이디</label>
				</div>
				<div class="col-sm-10">${id}</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">연락처</label>
				</div>
				<div class="col-sm-10">${phoneNumber}</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">e-mail</label>
				</div>
				<div class="col-sm-10">${email}</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">기수</label>
				</div>
				<div class="col-sm-10">${cardinalNumber}</div>
			</div>
			<div>
				<a class="btn btn-primary col-sm-12"
					style="margin-bottom: 5px;" href="javascript:joinApplyAgree();">정보 확인 완료</a>
			</div>
			<input type="hidden" id="id" name="id" value="${id}">
			<input type="hidden" id="userName" name="userName" value="${userName}">
			<input type="hidden" id="password" name="password" value="${password}">
			<input type="hidden" id="phoneNumber" name="phoneNumber" value="${phoneNumber}">
			<input type="hidden" id="email" name="email" value="${email}">
			<input type="hidden" id="cardinalNumber" name="name" value="${cardinalNumber}">
			<input type="hidden" id="_csrf" name="${_csrf.parameterName}" value="${_csrf.token}">
		</form>
	</div>
</div>