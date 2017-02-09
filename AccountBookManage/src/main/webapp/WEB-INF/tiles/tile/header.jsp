<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<div class="container">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#"><span>Brand</span></a>
  </div>
  <div class="collapse navbar-collapse" id="navbar-ex-collapse">
	<ul class="nav navbar-nav navbar-right">
		<c:choose>
			<c:when test="${active_menu eq 'user'}">
				<li class="active">
					<a href="#"><i class="fa fa-home"></i> Home</a>
				</li>
			</c:when>
			<c:otherwise>
				<li>
					<a href="#"><i class="fa fa-home"></i> Home</a>
				</li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${active_menu eq 'deposit' || active_menu eq 'withdraw'}">
				<li class="active">
					<a href="javascript:withdrawApply();"><i class="fa fa-calculator"></i> 입/출금 관리</a>
				</li>
			</c:when>
			<c:otherwise>
				<li>
					<a href="javascript:withdrawApply();"><i class="fa fa-calculator"></i> 입/출금 관리</a>
				</li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${active_menu eq 'accountbook'}">
				<li class="active">
					<a href="javascript:accountBookList();"><i class="fa fa-address-book-o"></i> 금전출납부</a>
				</li>
			</c:when>
			<c:otherwise>
				<li>
					<a href="javascript:accountBookList();"><i class="fa fa-address-book-o"></i> 금전출납부</a>
				</li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${active_menu eq 'mypage'}">
				<li class="active">
					<a href="javascript:myPage();"><i class="fa fa-user"></i> MyPage</a>
				</li>
			</c:when>
			<c:otherwise>
				<li>
					<a href="javascript:myPage();"><i class="fa fa-user"></i> MyPage</a>
				</li>
			</c:otherwise>
		</c:choose>
		<sec:authorize access="hasRole('ROLE_ADMIN')">
		<c:choose>
			<c:when test="${active_menu eq 'authority'}">
				<li class="active">
					<a href="javascript:authorityManage();"><i class="fa fa-cog"></i> 관리자 메뉴</a>
				</li>
			</c:when>
			<c:otherwise>
				<li>
					<a href="javascript:authorityManage();"><i class="fa fa-cog"></i> 관리자 메뉴</a>
				</li>
			</c:otherwise>
		</c:choose>
		</sec:authorize>
		<sec:authorize access="isAnonymous()">
			<li>
				<a href="javascript:sessionLogin();"><i class="fa fa-sign-in"></i> 로그인</a>
			</li>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			<li>
				<a href="javascript:sessionLogout();"><i class="fa fa-power-off"></i> 로그아웃</a>
			</li>
		</sec:authorize>
	</ul>
  </div>
</div>