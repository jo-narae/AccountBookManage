<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  
  <head>
	<tiles:insertAttribute name="import" />
  </head>
  <body>
    <div class="navbar navbar-default navbar-static-top">
		<tiles:insertAttribute name="header" />
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-lg-2">
          <tiles:insertAttribute name="leftbar" />
        </div>
        <div class="col-sm-9 col-lg-10">
          <!-- your page content -->
          <div class="section">
            <div class="container">
              <tiles:insertAttribute name="contents" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>

</html>