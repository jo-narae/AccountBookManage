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
            <i class="fa fa-address-book-o"></i>금전 출납부</h3>
        </div>
        <div class="col-sm-9 col-lg-10">
          <!-- your page content -->
          <div class="section">
            <div class="container">
              <ul class="breadcrumb">
                <li>금전 출납부</li>
                <li>장부 목록</li>
              </ul>
              <h3 class="text-primary">
                <b>장부 목록</b>
              </h3>
              <div class="row">
                <div class="col-md-12">
                <div class="text-right col-sm-11">
	                <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"> 2016/12/31 <span class="fa fa-caret-down"></span></a> -
	                <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"> 2017/1/31 <span class="fa fa-caret-down"></span></a>
	                <a href="#" class="btn btn-primary">검색</a>
	              </div>
                  <div class="text-right bottom_margin_10">
                    <a href="#" class="btn btn-default">Excel 파일</a>
                  </div>
                  <table class="table">
                    <thead>
                      <tr>
                        <th>이름</th>
                        <th>내역</th>
                        <th>입금</th>
                        <th>출금</th>
                        <th>잔액</th>
                        <th>날짜</th>
                        <th>영수증</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>함민정</td>
                        <td>회비</td>
                        <td>3000</td>
                        <td></td>
                        <td>3000</td>
                        <td>2017/1/17</td>
                        <td>-</td>
                      </tr>
                      <tr>
                        <td>아무개</td>
                        <td>간식</td>
                        <td></td>
                        <td>2000</td>
                        <td>1000</td>
                        <td>2017/1/17</td>
                        <td>상세보기</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>

</html>