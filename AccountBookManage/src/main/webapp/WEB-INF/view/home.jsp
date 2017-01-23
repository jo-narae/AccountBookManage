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
    <link href="./css/bootstrap.css" rel="stylesheet" type="text/css">
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
              <a href="#">Home</a>
            </li>
            <li>
              <a href="#">Contacts</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-lg-2">
          <h3 class="text-primary">출금관리</h3>
          <nav class="navbar navbar-default navbar-fixed-side">
            <!-- normal collapsible navbar markup -->
            <ol class="list-unstyled col-md-12 bottom_padding_10 top_padding_10">
              <li>출금관리</li>
              <li>입금관리</li>
              <li>장부관리</li>
            </ol>
          </nav>
        </div>
        <div class="col-sm-9 col-lg-10">
          <!-- your page content -->
          <div class="section">
            <div class="container">
              <div class="row">
                <div class="col-md-12">임시컨텐츠 영역1</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>

</html>