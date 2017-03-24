<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ul class="breadcrumb">
	<li><a href="#">입/출금 관리</a></li>
	<li>신청 목록</li>
	<li>신청 내역 상세</li>
</ul>
<h3 class="text-primary">
	<b>신청 내역 상세</b>
</h3>
<div class="row">
	<div class="col-md-12">
		<form class="form-horizontal" role="form">

			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">이름</label>
				</div>
				<div class="col-sm-10">${applyDetail[0].user_name}</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">내역</label>
				</div>
				<div class="col-sm-10">${applyDetail[0].content}</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">금액</label>
				</div>
				<div class="col-sm-10">${applyDetail[0].price}</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">신청날짜</label>
				</div>
				<div class="col-sm-10">${applyDetail[0].apply_date}</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">신청상태</label>
				</div>
				<div class="col-sm-10">${applyDetail[0].apply_type}</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">영수증</label>
				</div>
				<img src="../img/join.jpg">
			</div>
		</form>
	</div>
	<div>
		<button type="submit" class="btn btn-danger col-sm-4">삭제</button>
		<button type="submit" class="btn btn-default col-sm-4">수정</button>
		<button type="submit" class="btn btn-primary col-sm-4">목록</button>
	</div>
</div>