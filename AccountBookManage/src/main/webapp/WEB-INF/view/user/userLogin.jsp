<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<ul class="breadcrumb">
  <li>
    <a href="#">Home</a>
  </li>
  <li>로그인</li>
</ul>
<h3 class="text-primary">
  <b>로그인</b>
</h3>
<div class="row">
  <div class="col-md-12">
    <form class="form-horizontal" role="form">
      <div class="form-group">
        <div class="col-sm-2">
          <label for="inputEmail3" class="control-label">아이디</label>
        </div>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="inputEmail3" placeholder="아이디를 입력해주세요.">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-2">
          <label for="inputPassword3" class="control-label">비밀번호</label>
        </div>
        <div class="col-sm-10">
          <input type="password" class="form-control" id="inputPassword3" placeholder="비밀번호를 입력해주세요.">
        </div>
      </div>
      <div>
        <button type="submit" class="btn btn-primary col-sm-12" style="margin-bottom:5px;">로그인</button>
        <button type="submit" class="btn btn-default col-sm-12" style="margin-bottom:5px;">회원가입</button>
        <button type="submit" class="btn btn-default col-sm-6">아이디 찾기</button>
        <button type="submit" class="btn btn-default col-sm-6">비밀번호 찾기</button>
      </div>
    </form>
  </div>
</div>