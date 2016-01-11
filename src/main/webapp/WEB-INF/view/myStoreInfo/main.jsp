<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko" data-ng-app="employeeApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<%@ include file="/WEB-INF/view/commons.jspf" %>
<title>main.jsp</title>

<!-- URL Resolve -->
<c:url var="URL_GET_LIST"					value="/myStoreInfo/"/>
<c:url var="URL_GET_ITEM_BASE" 				value="/myStoreInfo/"/>		<%-- /store/{id} --%>
<c:url var="URL_GET_PAGE_BASE" 				value="/myStoreInfo/page/"/>	<%-- /city/page/{pageNo} --%>

<c:url var="URL_POST_LIST_APPEND" 			value="/myStoreInfo/"/>
<c:url var="URL_POST_ITEM_APPEND" 			value="/myStoreInfo/"/>

<c:url var="URL_PUT_LIST_MODIFY" 			value="/myStoreInfo/"/>
<c:url var="URL_PUT_ITEM_MODIFY_BASE" 		value="/myStoreInfo/"/>		<%-- /city/{id} --%>

<c:url var="URL_DELETE_ITEM_DELETE_BASE" 	value="/myStoreInfo/"/>		<%-- /city/{id} --%>
<c:url var="URL_LOGIN" 	value="/store/"/>


<script type="text/javascript">

	var urls = {
			GET_LIST : 					"${URL_GET_LIST}",
			GET_PAGE_BASE : 			"${URL_GET_PAGE_BASE}",
			GET_ITEM_BASE :				"${URL_GET_ITEM_BASE}",
			
			POST_LIST_APPEND :			"${URL_POST_LIST_APPEND}",
			POST_ITEM_APPEND :			"${URL_POST_ITEM_APPEND}",
			
			PUT_LIST_MODIFY :			"${URL_PUT_LIST_MODIFY}",
			PUT_ITEM_MODIFY_BASE :		"${URL_PUT_ITEM_MODIFY_BASE}",
			
			DELETE_ITEM_DELETE_BASE :	"${URL_DELETE_ITEM_DELETE_BASE}",
			LOGIN :						"${URL_LOGIN}"
	};
	
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar',
	            'ui.bootstrap'
	           ];

	var app = angular.module("employeeApp", deps);
	
	app.config(function($routeProvider) {
		$routeProvider.otherwise({
			redirectTo: "/list"
		});
	});
	
	app.constant("URL", urls);

	app.controller("mainController", function($scope, $http, $location) {
		console.log("mainController...");
// 		$location.path("/list");
		
		$scope.staticOrFixed = "navbar-static-top";
		
		$scope.setMenuStyle = function(str) {
			$scope.staticOrFixed = str;
		};
		
		
	});
	
	
	
</script>

<c:url var="listController" value="/js/store/listController.js"/>
<c:url var="detailController" value="/js/store/detailController.js"/>
<c:url var="appendController" value="/js/store/appendController.js"/>
<c:url var="modifyController" value="/js/store/modifyController.js"/>
<c:url var="deleteController" value="/js/store/deleteController.js"/>
<%-- <c:url var="loginController" value="/js/store/loginController.js"/> --%>

<script type="text/javascript" src="${listController}"></script>
<script type="text/javascript" src="${detailController}"></script>
<script type="text/javascript" src="${appendController}"></script>
<script type="text/javascript" src="${modifyController}"></script>
<script type="text/javascript" src="${deleteController}"></script>
<%-- <script type="text/javascript" src="${loginController}"></script> --%>

</head>
<body data-ng-controller="mainController" class="container">
<pre>{{loginstatus}}</pre>
<h1>{{store.email}}</h1>

<h1>{{title}}</h1>
<div data-ng-view>

</div>
</body>
</html>