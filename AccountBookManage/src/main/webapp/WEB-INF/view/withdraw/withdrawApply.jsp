<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<ul class="breadcrumb">
	<li><a href="#">입/출금 관리</a></li>
	<li>신청 목록</li>
	<li>출금 신청</li>
</ul>
<h3 class="text-primary">
	<b>출금 신청</b>
</h3>
<div class="row">
	<div class="col-md-12">
		<form class="form-horizontal" role="form">
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">신청자명</label>
				</div>
				<div class="col-sm-10">함민정</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">내역</label>
				</div>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputEmail3"
						placeholder="내역을 입력해주세요. (ex : A4용지 구매)">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">금액</label>
				</div>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="inputEmail3"
						placeholder="금액을 입력해주세요.">
				</div>
				<div class="col-sm-2">
					<label class="control-label">구매날짜</label>
				</div>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="inputEmail3"
						placeholder="구매날짜를 입력해주세요.">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">입금계좌</label>
				</div>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputEmail3"
						placeholder="출금 신청시 받으실 계좌를 입력해주세요.">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label class="control-label">영수증</label>
				</div>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="inputEmail3"
						placeholder="영수증을 첨부해 주세요.">
				</div>
				<div class="col-sm-2 text-right">
					<a href="#" class="btn btn-primary">첨부파일</a>
				</div>
			</div>
			<div>
				<button type="submit" class="btn btn-primary col-sm-12">출금
					신청</button>
			</div>
		</form>
	</div>
</div>