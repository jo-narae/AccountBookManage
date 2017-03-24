<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="breadcrumb">
	<li><a href="#">입/출금관리</a></li>
	<li>입금 관리</li>
	<li>입금내역 상세정보</li>
</ul>
<h3 class="text-primary">
	<b>입금내역 상세정보</b>
</h3>
<div class="row">
	<div class="col-md-12">
		<form class="form-horizontal" role="form">
			<div class="form-group">
				<div class="col-sm-2">
					<label for="inputEmail3" class="control-label">이름</label>
				</div>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputEmail3"
						placeholder="이름을 입력해주세요." value="${detail[0].user_name}">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2">
					<label for="inputPassword3" class="control-label">내역</label>
				</div>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputPassword3"
						placeholder="입금 내역을 입력해주세요." value="${detail[0].content}">
				</div>
			</div>
			<div>
				<div class="form-group">
					<div class="col-sm-2">
						<label for="inputPassword3" class="control-label">금액</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputPassword3"
							placeholder="입금액을 입력해주세요." value="${detail[0].price}">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2">
						<label for="inputPassword3" class="control-label">날짜</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputPassword3"
							placeholder="입금 날짜를 입력해주세요." value="${detail[0].deal_date}">
					</div>
				</div>
				<div>
					<div>
						<button type="submit" class="btn btn-primary col-sm-6">수정</button>
						<button type="submit" class="btn btn-default col-sm-6">삭제</button>
					</div>
		</form>
	</div>
</div>