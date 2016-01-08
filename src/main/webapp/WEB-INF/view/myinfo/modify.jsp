<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<title>modify.jsp</title>

</head>
<body class="container">

<a class="btn btn-primary" href="#/list">list...</a>
<pre>{{member}}</pre>
<div class="row">
<div class="col-sm-8 col-sm-offset-2">
	<div class="panel panel-default">
		<div class="panel-heading">도시 수정</div>
			<pre>{{member}}</pre>
		<div class="panel-body">
		<form name="memberForm" novalidate="novalidate" data-ng-submit="submit()">
			<!-- ID -->
			<div class="form-group">
				<label for="id">ID : </label>
				<input id="id"
					   name="id"
					   type="text" 
					   class="form-control"
					   data-ng-model="member.id"
					   readonly="readonly"
					   />
			</div>
			
			
			<!-- email -->
			<div class="form-group">
				<label for="email">email : </label>
				<input id="email"
					   name="email"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.email"
					   data-ng-maxlength="35"
					   />
				<div>memberForm.email.$invalid = {{memberForm.email.$invalid}}</div>
				<div>memberForm.email.$error.required = {{memberForm.email.$error.required}}</div>
				<div>memberForm.email.$error.maxlength = {{memberForm.email.$error.maxlength}}</div>
				<div data-ng-show="memberForm.email.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.email.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.email.$error.maxlength">35자리까지 입력가능합니다.</div>
				</div>
			</div>
			
			
			
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
			
			
			<!-- password -->
			<div class="form-group">
				<label for="password">password : </label>
				<input id="password"
					   name="password"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.password"
					   data-ng-maxlength="15"
					   
					   />
				<div>memberForm.password.$invalid = {{memberForm.password.$invalid}}</div>
				<div>memberForm.password.$error.required = {{memberForm.password.$error.required}}</div>
				<div>memberForm.password.$error.maxlength = {{memberForm.password.$error.maxlength}}</div>
				<div>memberForm.password.$error.minlength = {{memberForm.password.$error.minlength}}</div>
				<div data-ng-show="memberForm.password.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.password.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.password.$error.maxlength || memberForm.password.$error.minlength">3자리만 입력가능합니다.</div>
				</div>	   
			</div>
			<!-- cmoney -->
			<div class="form-group">
				<label for="cmoney">cmoney : </label>
				<input id="cmoney"
					   name="cmoney"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.cmoney"
					   data-ng-maxlength="20"
					   />
				<div>memberForm.cmoney.$invalid = {{memberForm.cmoney.$invalid}}</div>
				<div>memberForm.cmoney.$error.required = {{memberForm.cmoney.$error.required}}</div>
				<div>memberForm.cmoney.$error.maxlength = {{memberForm.cmoney.$error.maxlength}}</div>
				<div data-ng-show="memberForm.cmoney.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.cmoney.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.cmoney.$error.maxlength">20자리까지 입력가능합니다.</div>
				</div>	   
			</div>
			
			<!-- coupon -->
			<div class="form-group">
				<label for="coupon">coupon : </label>
				<input id="coupon"
					   name="coupon"
					   type="number" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.coupon"
					   data-ng-min="0"
					   data-ng-max="2147483647"
					   />
				<div>memberForm.coupon.$invalid = {{memberForm.coupon.$invalid}}</div>
				<div>memberForm.coupon.$error.required = {{memberForm.coupon.$error.required}}</div>
				<div>memberForm.coupon.$error.number = {{memberForm.coupon.$error.number}}</div>
				<div>memberForm.coupon.$error.max = {{memberForm.coupon.$error.max}}</div>
				<div>memberForm.coupon.$error.min = {{memberForm.coupon.$error.min}}</div>
				<div data-ng-show="memberForm.coupon.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.coupon.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.coupon.$error.number"> 숫자만 입력하세요.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.coupon.$error.max"> 최대값을 초과했습니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.coupon.$error.min"> 0이상 입력 가능합니다.</div>
				</div>	   
					   
			</div>
			
			<!-- Submit -->
			<div class="form-group">
			<input type="submit" 
				   value="확인"
				   class="btn btn-primary"
				   data-ng-disabled="memberForm.$invalid"/>
			<div>memberForm.$invalid = {{memberForm.$invalid}}</div>	   
			</div>
	
			
		</form>
		</div>
	</div>
</div>
</div>



</body>
</html>




