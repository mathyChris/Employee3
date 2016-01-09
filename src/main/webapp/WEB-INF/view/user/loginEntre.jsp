<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

<!DOCTYPE html>
<html lang="ko" data-ng-app="employeeApp">

<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- mobile 환경에서 responsive web 구현하기 위한 부분 -->

<meta charset="UTF-8">

<%@ include file="/WEB-INF/view/commons.jspf" %>

<title>login.jsp</title>


<!-- url 을 처리하는 부분   -->
<c:url var="LOGIN_URL" value="/user/login"/>
<%-- <c:url var="REDIRECT_URL" value="/city/main.html"/> <!-- 성공 시 main으로 이동 --> --%>
<%-- <c:url var="REDIRECT_URL" value="/member/main.html"/> --%>
<c:url var="REDIRECT_URL" value="/store/main.html"/>


<script type="text/javascript">

// 	 setting to use 'module' 

	var LOGIN_URL = "${LOGIN_URL}" ;
	var REDIRECT_URL = "${REDIRECT_URL}"


	var deps = [
	            
	            'ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar'
	            
	           ];

	var app = angular.module('employeeApp', deps);
	
	app.controller('mainController', function($scope, $http) {
		
		console.log("mainController...");
		
/*		
 		// 1. login.jsp, 여기에서  만든 ajax 를 이용, loginstatus 값을 따로 받아 처리한다.   
        // 그러나 여기에서는 ajax 를 따로 사용한다는 점 때문에 좋은 형식은 아닌 듯 하다... 따라서 2번 방법인 $watch 를 사용한다. 
		var ajax = $http.get("<c:url value="/user/logincheck" />");
		ajax.then(function(value) {
			
			var loginstatus = value.data.login ; 
			
			if(loginstatus == true){
				
				location.href = "/Employee/user/logout" ;
				
			}
			
		}); 
		
*/
		 
		 
		 // 2. angular 의 모니터링 기능 == $watch , $watch 는 여기서 loginstatus의 값을 모니터링 하는 역활을 수행한다.  
		 $scope.$watch("loginstatus", function(){ // navController 에서 loginstatus 값을 여기로 넘긴다. 
			 
// 			alert("$watch...loginstatus");
			console.log("$watch...loginstatus"); 
			
			
			// login 화면으로 와서 login 상태를 check 한 후 logout 하도록 하는 logic 
			if($scope.loginstatus == true) {
// 				location.href= "/Employee/user/logout"; // 아래와 같이 <c tag 사용 
				location.href= '<c:url value="/user/logout" />'; 
			} 
		 
		 }) ;
		 
		 
// 		alert("login = " + loginstatus); 
		
		$scope.login={}; 
		
		// submit()의 기능 구현 
		$scope.submit = function(){
			
			alert("submit....");
			console.log("submit()..."); 
			
			// call a ajax like postman operating 
			var ajax = $http.post("${LOGIN_URL}",{
				
				email : $scope.login.email, 
				password : $scope.login.password
				
			}); 
			
			
			
			ajax.then(function(value) {
				// 성공시 다음 수행 
				console.dir(value); 
				
				//main page 로 이동 
// 				$location.href="/Employee/city/main.html" ;
				location.href="${REDIRECT_URL}" ; // main page 로 이동시킨다. location 은 ajax의 내장 객체로 사용한다.  
// 				$location.path = "REDIRECT_URL" ; 
				
			}, function(reason) {
				
				console.dir(reason); 
				$scope.error = reason.data ; 
	
			}); 
			
		}
		
		
	});
	
</script>

</head>

<body data-ng-controller="mainController" class="container">
		{{loginstatus}}
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                        
                        <pre>{{login}}</pre>
                        <pre>{{error.message}}</pre>
                    </div>
                    <div class="panel-body">
                        <form name="loginForm" novalidate="novalidate" data-ng-submit="submit()">
                            <fieldset>
                                <div class="form-group">
                                
                                    <input class="form-control" 
                                    	   placeholder="E-mail" 
                                    	   name="email" 
                                    	   type="email" 
                                    	   autofocus
                                    	   required="required"
                                    	   data-ng-model="login.email"
                                    	   >
                                    	   
                                 <div data-ng-show="loginForm.email.$dirty && loginForm.email.$invalid">
                                	 <div data-ng-show="loginForm.email.$error.required">
                                	 	### Input requested 
                                	 </div>
                                	 <div data-ng-show="loginForm.email.$error.email">
                                	 	### Not the E-mail form 
                                	 </div>
                                	 
                                 </div> 
                                
                                </div>
                                
                                <div class="form-group">
                                    <input class="form-control" 
                                      	   placeholder="Password" 
                                      	   name="password" 
                                      	   type="password" 
                                      	   required="required"
                                      	   data-ng-model="login.password"
                                      	   >
                                      	   
                                     <div data-ng-show="loginForm.password.$dirty && loginForm.password.$invalid">
                                	 <div data-ng-show="loginForm.password.$error.required">
                                	 	### Password requested
                                	 </div>
                                	 </div>
                               
                                	 
                                 </div>       	   
                                      	   
                                      	   
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me   
<!--                                         <button name="register" value="register">Register</button> -->
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button type="submit" 
                                		class="btn btn-lg btn-success"
                                		data-ng-disabled="loginForm.$invalid">Login</button>
                                		
                            </fieldset>
                        </form>
                        <p>
                        <button> <a href="login.html"> Member (admin)</a> </button>
                        <button> <a href="../store/append.html"> Append</a> </button>
                        
                    </div>
                </div>
            </div>
        </div>

</body>

</html>







