<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="../js/common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="../js/common/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/common/index.js"></script>
	<link href="../css/common.css" rel="stylesheet" type="text/css">
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
    <div class="navbar navbar-default navbar-static-top">
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
            <li class="active">
              <a href="#"><i class="fa fa-home"></i> Home</a>
            </li>
            <li>
              <a href="#"><i class="fa fa-user"></i> MyPage</a>
            </li>
            <li>
              <a href="#"><i class="fa fa-cog"></i> 권한관리</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="row">
       <div class="col-sm-3 col-lg-2">
          <h3 class="text-primary">
            <i class="fa fa-cog"></i>권한관리</h3>
        </div>
        <div class="col-sm-9 col-lg-10">
          <!-- your page content -->
          <div class="section">
            <div class="container">
              <ul class="breadcrumb">
                <li>
                  <a href="#">권한관리</a>
                </li>
                <li>회원관리 및 관리자 임명</li>
              </ul>
              <h3 class="text-primary">
                <b>회원관리 및 관리자 임명</b>
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
	                      <tr>
	                        <td><input type="checkbox" name="chk_info" value="1"></td>
	                        <td>함민정</td>
	                        <td>12기</td>
	                        <td>010-0000-0000</td>
	                      </tr>
	                      <tr>
	                        <td><input type="checkbox" name="chk_info" value="2"></td>
	                        <td>조나래</td>
	                        <td>11기</td>
	                        <td>010-1234-5678</td>
	                      </tr>
	                    </tbody>
	                  </table>
                  </form>
                </div>
              </div>
              <div class="text-center">
            	<a href="#" class="btn btn-primary">관리자 권한 위임</a>
            	<a href="#" class="btn btn-default">회원 탈퇴</a>
          	  </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>

</html>