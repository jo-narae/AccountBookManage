<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!-- html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html -->

<html>
  
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="./js/common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="./js/common/bootstrap.min.js"></script>
	<script type="text/javascript" src="./js/common/index.js"></script>
	<link href="./css/common.css" rel="stylesheet" type="text/css">
    <link href="./css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="./css/mainbootstrap.css" rel="stylesheet" type="text/css">
  </head>
  
  <body class="cover-image" style="background-image : url('./img/cover.jpg')">
    <div class="cover">
      <div class="navbar">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><span class="text-inverse">Brand</span></a>
          </div>
          <div class="collapse navbar-collapse" id="navbar-ex-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="active">
                <a href="#"><span class="text-inverse"><i class="fa fa-home"></i> Home</span></a>
              </li>
              <li>
                <a href="#"><span class="text-inverse"><i class="fa fa-user"></i> MyPage</span></a>
              </li>
              <li>
                <a href="#"><span class="text-inverse"><i class="fa fa-cog"></i> 권한관리</span></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h1 class="text-inverse">Account Book Manage</h1>
            <p class="text-inverse">모바일소프트웨어학과의 장부관리 사이트입니다.</p><br />
            <a class="btn btn-default" style="width:300px;">LOGIN</a>
          </div>
        </div>
      </div>
    </div>
  </body>

</html>