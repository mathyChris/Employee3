<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<title>append.jsp</title>

</head>
<body class="container">
<a class="btn btn-primary" href="#/list">list...</a>
<div class="row">
<div class="col-sm-6 col-sm-offset-3">
	<div class="panel panel-default">
		<div class="panel-heading">도시 입력</div>
			<pre>{{member}}</pre>
		<div class="panel-body">
		<form name="memberForm" novalidate="novalidate" data-ng-submit="submit()">
			<!-- Name -->
			<div class="form-group">
				<label for="name">Name : </label>
				<input id="name"
					   name="name"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.name"
					   data-ng-maxlength="35"
					   />
				<div>memberForm.name.$invalid = {{memberForm.name.$invalid}}</div>
				<div>memberForm.name.$error.required = {{memberForm.name.$error.required}}</div>
				<div>memberForm.name.$error.maxlength = {{memberForm.name.$error.maxlength}}</div>
				<div data-ng-show="memberForm.name.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.name.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.name.$error.maxlength">35자리까지 입력가능합니다.</div>
				</div>
			</div>
			<!-- CountryCode -->
			<div class="form-group">
				<label for="countryCode">CountryCode : </label>
				<input id="countryCode"
					   name="countryCode"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.countryCode"
					   data-ng-maxlength="3"
					   data-ng-minlength="3"
					   />
				<div>memberForm.countryCode.$invalid = {{memberForm.countryCode.$invalid}}</div>
				<div>memberForm.countryCode.$error.required = {{memberForm.countryCode.$error.required}}</div>
				<div>memberForm.countryCode.$error.maxlength = {{memberForm.countryCode.$error.maxlength}}</div>
				<div>memberForm.countryCode.$error.minlength = {{memberForm.countryCode.$error.minlength}}</div>
				<div data-ng-show="memberForm.countryCode.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.countryCode.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.countryCode.$error.maxlength || memberForm.countryCode.$error.minlength">3자리만 입력가능합니다.</div>
				</div>	   
			</div>
			<!-- District -->
			<div class="form-group">
				<label for="district">District : </label>
				<input id="district"
					   name="district"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.district"
					   data-ng-maxlength="20"
					   />
				<div>memberForm.district.$invalid = {{memberForm.district.$invalid}}</div>
				<div>memberForm.district.$error.required = {{memberForm.district.$error.required}}</div>
				<div>memberForm.district.$error.maxlength = {{memberForm.district.$error.maxlength}}</div>
				<div data-ng-show="memberForm.district.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.district.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.district.$error.maxlength">20자리까지 입력가능합니다.</div>
				</div>	   
			</div>
			<!-- Population -->
			<div class="form-group">
				<label for="population">Population : </label>
				<input id="population"
					   name="population"
					   type="number" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.population"
					   data-ng-min="0"
					   data-ng-max="2147483647"
					   />
				<div>memberForm.population.$invalid = {{memberForm.population.$invalid}}</div>
				<div>memberForm.population.$error.required = {{memberForm.population.$error.required}}</div>
				<div>memberForm.population.$error.number = {{memberForm.population.$error.number}}</div>
				<div>memberForm.population.$error.max = {{memberForm.population.$error.max}}</div>
				<div>memberForm.population.$error.min = {{memberForm.population.$error.min}}</div>
				<div data-ng-show="memberForm.population.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.population.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.population.$error.number"> 숫자만 입력하세요.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.population.$error.max"> 최대값을 초과했습니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.population.$error.min"> 0이상 입력 가능합니다.</div>
				</div>	   
					   
			</div>
			
			<!-- Submit -->
			<div class="form-group">
			<input type="submit" 
				   value="확인"
				   class="btn btn-primary"
				   data-ng-disabled="memberForm.$invalid"
				   
				   />
			<div>memberForm.$invalid = {{memberForm.$invalid}}</div>	   
			</div>
	
			
		</form>
		</div>
	</div>
</div>
</div>

</body>
</html>




