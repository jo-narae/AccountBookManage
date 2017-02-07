<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="custom_js_src" value="../../js/admin/${active_menu}/${page_name}.js"  />

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="../../js/common/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="../../js/common/bootstrap.min.js"></script>
<script type="text/javascript" src="${custom_js_src}"></script>
<script type="text/javascript" src="../../js/common/admin-common.js"></script>
<link href="../../css/common.css" rel="stylesheet" type="text/css">
<link href="../../css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css">