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
		<form class="form-horizontal" role="form">
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">이름</label>
				</div>
				<div class="col-sm-10">${name}</div>
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
				<button type="submit" class="btn btn-primary col-sm-12">정보
					확인 완료</button>
			</div>
		</form>
	</div>
</div>