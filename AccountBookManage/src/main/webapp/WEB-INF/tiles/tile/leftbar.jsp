<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${active_menu eq 'user'}">
		<h3 class="text-primary"><i class="fa fa-home"></i>Home</h3>
		<nav class="navbar navbar-default navbar-fixed-side">
		  <!-- normal collapsible navbar markup -->
		  <ol class="list-unstyled col-md-12 bottom_padding_10 top_padding_10">
		    <li>로그인</li>
		    <li>회원가입</li>
		  </ol>
		</nav>
	</c:when>
	<c:when test="${active_menu eq 'deposit' || active_menu eq 'withdraw'}">
		<h3 class="text-primary"><i class="fa fa-calculator"></i>입/출금 관리</h3>
        <nav class="navbar navbar-default navbar-fixed-side">
          <!-- normal collapsible navbar markup -->
          <ol class="list-unstyled col-md-12 bottom_padding_10 top_padding_10">
            <li>입금 관리</li>
            <li>출금 관리</li>
            <li>신청 목록</li>
          </ol>
        </nav>
	</c:when>
	<c:when test="${active_menu eq 'accountbook'}">
		<h3 class="text-primary"><i class="fa fa-address-book-o"></i>금전 출납부</h3> 
	</c:when>
	<c:when test="${active_menu eq 'mypage'}">
		<h3 class="text-primary"><i class="fa fa-user"></i>My Page</h3>
	</c:when>
	<c:when test="${active_menu eq 'authority'}">
		<h3 class="text-primary"><i class="fa fa-cog"></i>권한관리</h3>
	</c:when>
	<c:otherwise>
		<h3 class="text-primary"><i class="fa fa-home"></i>Home</h3>
		<nav class="navbar navbar-default navbar-fixed-side">
		  <!-- normal collapsible navbar markup -->
		  <ol class="list-unstyled col-md-12 bottom_padding_10 top_padding_10">
		    <li>로그인</li>
		    <li>회원가입</li>
		  </ol>
		</nav>
	</c:otherwise>
</c:choose>