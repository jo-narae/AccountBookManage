<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<ul class="breadcrumb">
	<li><a href="#">권한관리</a></li>
	<li>회원관리 및 관리자 임명</li>
</ul>
<h3 class="text-primary">
	<b>회원관리 및 관리자 임명</b>
</h3>
<div class="row">
	<div class="col-md-12">
		<form class="form-horizontal" role="form">
			<table class="table">
				<thead>
					<tr>
						<th>선택</th>
						<th>이름</th>
						<th>기수</th>
						<th>연락처</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox" name="chk_info" value="1"></td>
						<td>함민정</td>
						<td>12기</td>
						<td>010-0000-0000</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk_info" value="2"></td>
						<td>조나래</td>
						<td>11기</td>
						<td>010-1234-5678</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</div>
<div class="text-center">
	<a href="#" class="btn btn-primary">관리자 권한 위임</a> <a href="#"
		class="btn btn-default">회원 탈퇴</a>
</div>