<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<ul class="breadcrumb">
	<li><a href="#">입/출금 관리</a></li>
	<li>신청 목록</li>
	<li>신청 목록 조회</li>
</ul>
<h3 class="text-primary">
	<b>신청 목록</b>
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
					<th>입금계좌</th>
					<th>날짜</th>
					<th>영수증</th>
					<th>상태</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty withDrawApplyList}">
						<ul class="list-group text-muted">
							<tr>
			                  <td colspan=8>신청목록이 없습니다.</td>
			                </tr>
						</ul>
					</c:when>
					<c:otherwise>
						<c:forEach var="apply" items="${withDrawApplyList}">
			                <tr>
								<td>${apply.id}</td>
								<td>${apply.user_name}</td>
								<td>${apply.content}</td>
								<td>${apply.price}</td>
								<td>${apply.deposit_account}</td>
								<td>${apply.apply_date}</td>
								<td>${apply.receipt_id}</td>
								<td>${apply.apply_type}</td>
			                </tr>
		                </c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</div>
<div class="text-right">
	<a href="#" class="btn btn-primary">신청하기</a>
</div>

<div class="row">
	<div class="col-md-12 text-center">
		<c:set var='PAGEBLOCK' value="10" />
		<fmt:parseNumber var="startPage"  value="${((currentPage - 1) / PAGEBLOCK)}" integerOnly="true" />
		<c:set var="startPage" value="${startPage - (startPage % 1) }" /> <!--  floor -->
		<c:set var="startPage" value="${startPage * PAGEBLOCK + 1 }" />
		<fmt:parseNumber var="totalPage"  value="${( withDrawApplyListCount / PAGEBLOCK)}" integerOnly="true" />

		<c:if test="${startPage < 0}">
             <c:set var="startPage" value="1" />
		</c:if>
		<c:if test="${withDrawApplyListCount % PAGEBLOCK != 0}">
             <c:set var="totalPage" value="${totalPage + 1}" />
		</c:if>
		<c:if test="${totalPage < 0}">
             <c:set var="totalPage" value="1" />
		</c:if>
		
		<c:set var="endPage" value="${startPage - 1 + PAGEBLOCK }" />
		<c:if test="${endPage > totalPage}">
			<c:set var="endPage" value="${totalPage }" />
		</c:if>

		<ul class="pagination">
			<c:choose>
				<c:when test="${startPage != 1}">
					<li><a href="withdrawApplyList.do?pageNum=${startPage-1}">Pre</a></li>
				</c:when>
			</c:choose>
			<c:forEach var="counter" begin="${startPage}" end="${endPage}">
				<c:choose>
					<c:when test="${currentPage eq counter}">
						<li class="active"><a href="withdrawApplyList.do?pageNum=${counter}"><c:out
									value="${counter}" /></a></li>
					</c:when>
					<c:otherwise>
						<li><a href="withdrawApplyList.do?pageNum=${counter}"><c:out
									value="${counter}" /></a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${totalPage != endPage || totalPage > endPage }">
					<li><a href="withdrawApplyList.do?pageNum=${endPage+1}">Next</a></li>
				</c:when>
			</c:choose>
		</ul>
	</div>
</div>
