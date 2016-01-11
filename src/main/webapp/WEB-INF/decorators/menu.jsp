<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh" %>  

<!DOCTYPE html>
<html lang="ko" data-ng-app="employeeApp">

<head>


<title><sitemesh:write property='title'/></title>

    <sitemesh:write property='head'/>
    

<c:url var="menu_sider" value="/css/menu_sider.css"/>
<c:url var="menu_sider_js" value="/js/menu_sider.js"/>

    
<link rel="stylesheet" href="${menu_sider}">
<script type="text/javascript" src="${menu_sider_js}"></script>  


<!-- navController로 옮긴다. parent nav(navigator)는 mainController 이다.  -->
<script type="text/javascript">
	
	app.controller("navController", function($scope, $http){
		
		//logincheck... LoginController에서 가져온다.
		var ajax = $http.get("<c:url value="/store/logincheck" />");
		ajax.then(function(value) {
			
			
			console.log("value of login = " + value.data.login); 
			$scope.$parent.loginstatus = value.data.login ; //navController의 parent는 mainController에 해당한다.
			// login 의 status 상태, true or false 는 browser console에서 확인하면 login 의 값으로 넘어어오기 때문에 value.data.login
			//// loginstatus 객체 저장 (사이트메시 내에서 체크를 위한 기능)  ////
			
			$scope.$parent.member = value.data.member;
			$scope.$parent.store = value.data.store ; 
			
			////////////////////////
		});
	});

</script>     
    
    

</head>


<!-- 원래 main.jsp 에 있던 nav를 여기에 가져다 놓는다.  -->
<!-- Static navbar -->
<!--       <nav class="navbar navbar-default navbar-static-top"> --><!--  상단 navi bar 가 static  -->
    
<!--       <nav class="navbar navbar-default navbar-fixed-top"> -->

<nav data-ng-controller="navController" class="navbar navbar-default {{StaticOrFixed}}">
    
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Find your zagat</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="/Employee/main.html">Home</a></li>
            <li><a href="/Employee/main.html#service">Service</a></li>
            <li><a href="/Employee/main.html#contact">Contact</a></li>
            
            <li><a href="/Employee/city/main.html">City</a></li>
            <li><a href="/Employee/country/main.html">Country</a></li>
            
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="active">
            	<a href="" data-ng-click="setMenuStyle('navbar-static-top')">Default </a>
            </li>
            <li><a href="" data-ng-click="setMenuStyle('navbar-static-top')">Static top</a></li>
            <li><a href="" data-ng-click="setMenuStyle('navbar-fixed-top')">Fixed top</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div><!--/.container-fluid -->
    </nav>



<body data-ng-controller="mainController" class="container">
	



  <sitemesh:write property='body'/>
  
  
<!-- <hr> -->
<!-- <h1> Menu Employee World </h1> -->
<!-- <hr>   -->
  

</body>

</html>







