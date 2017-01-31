<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<ul class="breadcrumb">
	<li><a href="#">My Page</a></li>
	<li>내정보 보기 및 수정</li>
</ul>
<h3 class="text-primary">
	<b>내정보 보기 및 수정</b>
</h3>
<div class="row">
	<div class="col-md-12">
		<form class="form-horizontal" role="form">
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">이름</label>
				</div>
				<div class="col-sm-10">조나래</div>
			</div>
			<div class="form-group" draggable="true">
				<div class="col-sm-2">
					<label class="control-label">아이디</label>
				</div>
				<div class="col-sm-10">asuka0820</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">연락처</label>
				</div>
				<div class="col-sm-10">010-4340-6004</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">e-mail</label>
				</div>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="inputEmail3"
						placeholder="e-mail을 입력해주세요.">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">기수</label>
				</div>
				<div class="col-sm-10">11기</div>
			</div>
			<div>
				<button type="submit" class="btn btn-primary col-sm-6">내정보
					수정</button>
				<button type="submit" class="btn btn-default col-sm-6">비밀번호
					변경</button>
			</div>
		</form>
	</div>
</div>