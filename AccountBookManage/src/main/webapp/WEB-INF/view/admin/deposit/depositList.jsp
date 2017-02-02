<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false"%>
<ul class="breadcrumb">
	<li><a href="#">입/출금 관리</a></li>
	<li>입금 관리</li>
	<li>입금 목록</li>
</ul>
<h3 class="text-primary">
	<b>입금 목록</b>
</h3>
<div class="row">
	<div class="col-md-12">
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>이름</th>
					<th>내역</th>
					<th>금액</th>
					<th>날짜</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>함민정</td>
					<td>회비</td>
					<td>2000</td>
					<td>2017/1/17</td>
				</tr>
				<tr>
					<td>2</td>
					<td>조나래</td>
					<td>회식비</td>
					<td>3000</td>
					<td>2017/1/17</td>
				</tr>
				<tr>
					<td>3</td>
					<td>아무개</td>
					<td>선물</td>
					<td>4000</td>
					<td>2017/1/17</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<div class="text-right">
	<a href="#" class="btn btn-primary">입력</a>
</div>

<div class="row">
	<div class="col-md-12 text-center">
		<c:set var='PAGEBLOCK' value="10" />
		<fmt:parseNumber var="startPage"  value="${((currentPage - 1) / PAGEBLOCK)}" integerOnly="true" />
		<c:set var="startPage" value="${startPage - (startPage % 1) }" /> <!--  floor -->
		<c:set var="startPage" value="${startPage * PAGEBLOCK + 1 }" />
		
		<c:if test="${startPage < 0}">
             <c:set var="startPage" value="1" />
		</c:if>
		
		<c:set var="endPage" value="${startPage - 1 + PAGEBLOCK }" />
		<c:if test="${endPage > totalPage}">
			<c:set var="endPage" value="${totalPage }" />
		</c:if>

		<ul class="pagination">
			<c:choose>
				<c:when test="${startPage != 1}">
					<li><a href="depositList.do?pageNum=${startPage-1}">Pre</a></li>
				</c:when>
			</c:choose>
			<c:forEach var="counter" begin="${startPage}" end="${endPage}">
				<c:choose>
					<c:when test="${currentPage eq counter}">
						<li class="active"><a href="depositList.do?pageNum=${counter}"><c:out
									value="${counter}" /></a></li>
					</c:when>
					<c:otherwise>
						<li><a href="depositList.do?pageNum=${counter}"><c:out
									value="${counter}" /></a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${totalPage != endPage || totalPage > endPage }">
					<li><a href="depositList.do?pageNum=${endPage+1}">Next</a></li>
				</c:when>
			</c:choose>
		</ul>
	</div>
</div>