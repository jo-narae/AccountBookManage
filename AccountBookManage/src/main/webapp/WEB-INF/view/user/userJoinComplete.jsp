<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<ul class="breadcrumb">
	<li><a href="#">Home</a></li>
	<li>회원가입</li>
	<li>회원가입 완료</li>
</ul>
<h3 class="text-primary">
	<b>회원가입 완료</b>
</h3>
<div class="row">
	<div class="col-md-12 text-center">
		<div class="thumbnail">
			<img src="../img/join.jpg"><br /> 
			회원가입을 진심으로 축하드립니다.<br />
			로그인 후 서비스 이용이 가능합니다. 감사합니다.<br />
			<a class="btn btn-primary col-sm-12" style="margin-top: 10px;" href="javascript:sessionLogin();">사용자 로그인</a>
		</div>
	</div>
</div>