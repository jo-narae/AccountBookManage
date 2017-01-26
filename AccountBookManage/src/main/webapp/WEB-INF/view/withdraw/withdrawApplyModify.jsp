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
              <a href="#"><i class="fa fa-home"></i> Home1</a>
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
                <li>신청 목록</li>
                <li>출금 신청사항 수정</li>
              </ul>
              <h3 class="text-primary">
                <b>출금 신청사항 수정</b>
              </h3>
              <div class="row">
                <div class="col-md-12">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <div class="col-sm-2">
                        <label class="control-label">신청자명</label>
                      </div>
                      <div class="col-sm-10">함민정</div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-2">
                        <label class="control-label">내역</label>
                      </div>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputEmail3" placeholder="내역을 입력해주세요. (ex : A4용지 구매)">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-2">
                        <label class="control-label">금액</label>
                      </div>
                      <div class="col-sm-4">
                        <input type="text" class="form-control" id="inputEmail3" placeholder="금액을 입력해주세요.">
                      </div>
                      <div class="col-sm-2">
                        <label class="control-label">구매날짜</label>
                      </div>
                      <div class="col-sm-4">
                        <input type="text" class="form-control" id="inputEmail3" placeholder="구매날짜를 입력해주세요.">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-2">
                        <label class="control-label">입금계좌</label>
                      </div>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputEmail3" placeholder="출금 신청시 받으실 계좌를 입력해주세요.">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-2">
                        <label class="control-label">영수증</label>
                      </div>
                      <div class="col-sm-8">
                        <input type="text" class="form-control" id="inputEmail3" placeholder="영수증을 첨부해 주세요.">
                      </div>
                      <div class="col-sm-2 text-right">
                        <a href="#" class="btn btn-primary">첨부파일</a>
                      </div>
                    </div>
                    <div>
                      <button type="submit" class="btn btn-primary col-sm-12">신청 내역 수정</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>

</html>