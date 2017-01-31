<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<div class="col-sm-10">함민정</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">내역</label>
				</div>
				<div class="col-sm-10">A4용지 구매</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">금액</label>
				</div>
				<div class="col-sm-10">3000</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">구매날짜</label>
				</div>
				<div class="col-sm-10">2017/1/17</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">입금계좌</label>
				</div>
				<div class="col-sm-10">우리 1003-20</div>
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