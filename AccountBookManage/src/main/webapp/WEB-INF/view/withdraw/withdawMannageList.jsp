<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="breadcrumb">
	<li><a href="#">입/출금 관리</a></li>
	<li>출금 관리</li>
	<li>출금 관리 목록</li>
</ul>
<h3 class="text-primary">
	<b>출금 관리 목록</b>
</h3>
<div class="row">
	<div class="col-md-12">
		<table class="table">
			<thead>
				<tr>
					<td><input type="checkbox" name="chk_info" value="1">
					</td>
					<th>이름</th>
					<th>내역</th>
					<th>금액</th>
					<th>입금계좌</th>
					<th>날짜</th>
					<th>영수증</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox" name="chk_info" value="2">
					</td>
					<td>함민정</td>
					<td>회비</td>
					<td>2000</td>
					<th>신한 1002-34</th>
					<td>2017/1/17</td>
					<th>상세보기</th>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk_info" value="3">
					</td>
					<td>조나래</td>
					<td>회식비</td>
					<td>3000</td>
					<th>신한 1002-34</th>
					<td>2017/1/17</td>
					<th>상세보기</th>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk_info" value="4">
					</td>
					<td>아무개</td>
					<td>선물</td>
					<td>4000</td>
					<th>신한 1002-34</th>
					<td>2017/1/17</td>
					<th>상세보기</th>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<div class="text-right">
	<a href="#" class="btn btn-primary">승인</a> <a href="#"
		class="btn btn-primary">반려</a>
</div>