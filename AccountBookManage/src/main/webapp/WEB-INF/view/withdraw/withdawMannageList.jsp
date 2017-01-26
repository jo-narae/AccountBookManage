<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <i class="fa fa-calculator"></i>입/출금 관리</h3>
          <nav class="navbar navbar-default navbar-fixed-side">
            <!-- normal collapsible navbar markup -->
            <ol class="list-unstyled col-md-12 bottom_padding_10 top_padding_10">
              <li>입금 관리</li>
              <li>출금 관리</li>
              <li>신청 목록</li>
            </ol>
          </nav>
        </div>
        <div class="col-sm-9 col-lg-10">
          <!-- your page content -->
          <div class="section">
            <div class="container">
              <ul class="breadcrumb">
                <li>
                  <a href="#">입/출금 관리</a>
                </li>
                <li>출금 관리</li>
                <li>출금 목록</li>
              </ul>
              <h3 class="text-primary">
                <b>출금 관리</b>
              </h3>
              <div class="row">
                <div class="col-md-12">
                  <table class="table">
                    <thead>
                      <tr>
                        <td>
                          <input type="checkbox" name="chk_info" value="1">
                        </td>
                        <th>#</th>
                        <th>이름</th>
                        <th>내역</th>
                        <th>금액</th>
                        <th>입금계좌</th>
                        <th>날짜</th>
                        <th>영수증</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                          <input type="checkbox" name="chk_info" value="1">
                        </td>
                        <td>1</td>
                        <td>함민정</td>
                        <td>회비</td>
                        <td>2000</td>
                        <th>신한 1002-34</th>
                        <td>2017/1/17</td>
                        <th>상세보기</th>
                      </tr>
                      <tr>
                        <td>
                          <input type="checkbox" name="chk_info" value="1">
                        </td>
                        <td>2</td>
                        <td>조나래</td>
                        <td>회식비</td>
                        <td>3000</td>
                        <th>신한 1002-34</th>
                        <td>2017/1/17</td>
                        <th>상세보기</th>
                      </tr>
                      <tr>
                        <td>
                          <input type="checkbox" name="chk_info" value="1">
                        </td>
                        <td>3</td>
                        <td>아무개</td>
                        <td>선물</td>
                        <td>4000</td>
                        <th>신한 1002-34</th>
                        <td>2017/1/17</td>
                        <th>상세보기</th>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="text-right">
                <a href="#" class="btn btn-primary">승인</a>
                <a href="#" class="btn btn-primary">반려</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>

</html>