<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<ul class="breadcrumb">
  <li>
    <a href="#">Home</a>
  </li>
  <li>회원가입</li>
  <li>회원가입 신청</li>
</ul>
<h3 class="text-primary">
  <b>회원가입 신청</b>
</h3>
<div class="row">
  <div class="col-md-12">
    <form class="form-horizontal" role="form">
      <div class="form-group">
        <div class="col-sm-2">
          <label class="control-label">이름</label>
        </div>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="inputEmail3" placeholder="이름을 입력해주세요.">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-2">
          <label class="control-label">아이디</label>
        </div>
        <div class="col-sm-8">
          <input type="text" class="form-control" id="inputEmail3" placeholder="아이디를 입력해주세요.">
        </div>
        <div class="col-sm-2 text-right">
          <a href="#" class="btn btn-primary">중복체크</a>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-2">
          <label class="control-label">연락처</label>
        </div>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="inputEmail3" placeholder="연락처를 입력해주세요.">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-2">
          <label class="control-label">비밀번호</label>
        </div>
        <div class="col-sm-10">
          <input type="password" class="form-control" id="inputEmail3" placeholder="비밀번호를 입력해주세요.">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-2">
          <label class="control-label">비밀번호 확인</label>
        </div>
        <div class="col-sm-10">
          <input type="password" class="form-control" id="inputEmail3" placeholder="비밀번호 확인을 입력해주세요.">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-2">
          <label class="control-label">e-mail</label>
        </div>
        <div class="col-sm-10">
          <input type="email" class="form-control" id="inputEmail3" placeholder="e-mail을 입력해주세요.">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-2">
          <label class="control-label">기수</label>
        </div>
        <div class="col-sm-10">
          <div class="btn-group">
            <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"> 11기 <span class="fa fa-caret-down"></span></a>
            <ul class="dropdown-menu text-center" role="menu">
              <li>11기</li>
              <li>12기</li>
              <li>13기</li>
              <li>14기</li>
            </ul>
          </div>
        </div>
      </div>
      <div>
        <button type="submit" class="btn btn-primary col-sm-12">가입신청</button>
      </div>
    </form>
  </div>
</div>