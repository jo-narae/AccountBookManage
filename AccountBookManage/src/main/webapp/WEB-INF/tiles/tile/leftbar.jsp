<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:choose>
	<c:when test="${active_menu eq 'user'}">
		<h3 class="text-primary"><i class="fa fa-home"></i>Home</h3>
		<nav class="navbar navbar-default navbar-fixed-side">
		  <!-- normal collapsible navbar markup -->
		  <ol class="list-unstyled col-md-12 bottom_padding_10 top_padding_10">
		    <li><a href="javascript:sessionLogin();">로그인</a></li>
		    <li><a href="javascript:userJoinApply();">회원가입</a></li>
		    <li>아이디 찾기</li>
		    <li>비밀번호 찾기</li>
		  </ol>
		</nav>
	</c:when>
	<c:when test="${active_menu eq 'deposit' || active_menu eq 'withdraw'}">
		<h3 class="text-primary"><i class="fa fa-calculator"></i>입/출금 관리</h3>
        <nav class="navbar navbar-default navbar-fixed-side">
          <!-- normal collapsible navbar markup -->
          <ol class="list-unstyled col-md-12 bottom_padding_10 top_padding_10">
          	<sec:authorize access="hasRole('ROLE_ADMIN')">
	            <li><a href="javascript:depositList();">입금 관리</a></li>
	            <li><a href="javascript:withdrawMannageList();">출금 관리</a></li>
            </sec:authorize>
            <li><a href="javascript:withdrawApply();">신청 목록</a></li>
          </ol>
        </nav>
	</c:when>
	<c:when test="${active_menu eq 'accountbook'}">
		<h3 class="text-primary"><i class="fa fa-address-book-o"></i>금전 출납부</h3> 
		<nav class="navbar navbar-default navbar-fixed-side">
		  <!-- normal collapsible navbar markup -->
		  <ol class="list-unstyled col-md-12 bottom_padding_10 top_padding_10">
		    <li><a href="javascript:accountBookList();">금전 출납부</a></li>
		  </ol>
		</nav>
	</c:when>
	<c:when test="${active_menu eq 'mypage'}">
		<h3 class="text-primary"><i class="fa fa-user"></i>My Page</h3>
		<nav class="navbar navbar-default navbar-fixed-side">
		  <!-- normal collapsible navbar markup -->
		  <ol class="list-unstyled col-md-12 bottom_padding_10 top_padding_10">
		    <li><a href="javascript:myPage();">My Page</a></li>
		  </ol>
		</nav>
	</c:when>
	<c:when test="${active_menu eq 'authority'}">
		<h3 class="text-primary"><i class="fa fa-cog"></i>관리자 메뉴</h3>
		<nav class="navbar navbar-default navbar-fixed-side">
		  <!-- normal collapsible navbar markup -->
		  <ol class="list-unstyled col-md-12 bottom_padding_10 top_padding_10">
		    <li><a href="javascript:authorityManage();">권한 관리</a></li>
		    <sec:authorize access="hasRole('ROLE_SYSTEM_ADMIN')"> <!-- 추후 예정 -->
		    	<li>시스템 관리</li>
		    </sec:authorize>
		  </ol>
		</nav>
	</c:when>
	<c:otherwise>
		<h3 class="text-primary"><i class="fa fa-exclamation-triangle"></i>에러 페이지</h3>
		<nav class="navbar navbar-default navbar-fixed-side">
		  <!-- normal collapsible navbar markup -->
		  <ol class="list-unstyled col-md-12 bottom_padding_10 top_padding_10">
		    <li><a href="javascript:prePage();">이전 페이지</a></li>
		  </ol>
		</nav>
	</c:otherwise>
</c:choose>