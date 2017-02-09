<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false"%>
<ul class="breadcrumb">
	<li><a href="#">권한관리</a></li>
	<li>관리자 위임</li>
</ul>
<h3 class="text-primary">
	<b>관리자 위임</b>
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
				<c:choose>
					<c:when test="${empty userList}">
						<ul class="list-group text-muted">
							<tr> <td colspan=4>회원 목록이 없습니다.</td> </tr>
						</ul>
					</c:when>
					<c:otherwise>
						<c:forEach var="user" items="${userList}">
			                <tr>
			                	<td><input type="radio" id="id" name="id" value="${user.id}">
								<td>${user.name}</td>
								<td>${user.cardinal_number}</td>
								<td>${user.phone_number}</td>
			                </tr>
		                </c:forEach>
					</c:otherwise>
				</c:choose>
				</tbody>
			</table>
		</form>
	</div>
</div>
<div class="text-right">
	<a href="#" class="btn btn-primary">관리자 권한 위임</a>
</div>
<div class="row">
	<div class="col-md-12 text-center">
		<c:set var='PAGEBLOCK' value="10" />
		<fmt:parseNumber var="startPage"  value="${((currentPage - 1) / PAGEBLOCK)}" integerOnly="true" />
		<c:set var="startPage" value="${startPage - (startPage % 1) }" /> <!--  floor -->
		<c:set var="startPage" value="${startPage * PAGEBLOCK + 1 }" />
		<fmt:parseNumber var="totalPage"  value="${( userListCount / PAGEBLOCK)}" integerOnly="true" />
		
		<c:if test="${startPage < 0}">
             <c:set var="startPage" value="1" />
		</c:if>
		<c:if test="${userListCount % PAGEBLOCK != 0}">
             <c:set var="totalPage" value="${totalPage + 1}" />
		</c:if>
		
		<c:set var="endPage" value="${startPage - 1 + PAGEBLOCK }" />
		<c:if test="${endPage > totalPage}">
			<c:set var="endPage" value="${totalPage }" />
		</c:if>

		<ul class="pagination">
			<c:choose>
				<c:when test="${startPage != 1}">
					<li><a href="authorityManage.do?pageNum=${startPage-1}">Pre</a></li>
				</c:when>
			</c:choose>
			<c:forEach var="counter" begin="${startPage}" end="${endPage}">
				<c:choose>
					<c:when test="${currentPage eq counter}">
						<li class="active"><a href="authorityManage.do?pageNum=${counter}"><c:out
									value="${counter}" /></a></li>
					</c:when>
					<c:otherwise>
						<li><a href="authorityManage.do?pageNum=${counter}"><c:out
									value="${counter}" /></a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${totalPage != endPage || totalPage > endPage }">
					<li><a href="authorityManage.do?pageNum=${endPage+1}">Next</a></li>
				</c:when>
			</c:choose>
		</ul>
	</div>
</div>
