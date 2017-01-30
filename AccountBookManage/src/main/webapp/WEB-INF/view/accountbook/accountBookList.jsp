<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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