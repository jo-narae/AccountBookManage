<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<a href="#"><i class="fa fa-calculator"></i> 입/출금 관리</a>
				</li>
			</c:when>
			<c:otherwise>
				<li>
					<a href="#"><i class="fa fa-calculator"></i> 입/출금 관리</a>
				</li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${active_menu eq 'accountbook'}">
				<li class="active">
					<a href="#"><i class="fa fa-address-book-o"></i> 금전출납부</a>
				</li>
			</c:when>
			<c:otherwise>
				<li>
					<a href="#"><i class="fa fa-address-book-o"></i> 금전출납부</a>
				</li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${active_menu eq 'mypage'}">
				<li class="active">
					<a href="#"><i class="fa fa-user"></i> MyPage</a>
				</li>
			</c:when>
			<c:otherwise>
				<li>
					<a href="#"><i class="fa fa-user"></i> MyPage</a>
				</li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${active_menu eq 'authority'}">
				<li class="active">
					<a href="#"><i class="fa fa-cog"></i> 권한관리</a>
				</li>
			</c:when>
			<c:otherwise>
				<li>
					<a href="#"><i class="fa fa-cog"></i> 권한관리</a>
				</li>
			</c:otherwise>
		</c:choose>
    </ul>
  </div>
</div>