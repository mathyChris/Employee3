/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("/modify config...")
	
	$routeProvider.when("/modify/:id", {
		templateUrl: "modify.html",
		controller: "modifyController"
	});
	
});

app.controller('modifyController', function($scope, $http, URL, $routeParams, $location) {
	console.log("modifyController...");
	console.log("URL.PUT_ITEM_MODIFY_BASE = " + URL.PUT_ITEM_MODIFY_BASE);
	console.log("URL.GET_ITEM_BASE = " + URL.GET_ITEM_BASE);
	console.log("id = " + $routeParams.id);

	$scope.$parent.title = "MODIFY Member View";
	
	var ajax = $http.get(URL.GET_ITEM_BASE + $routeParams.id); // /member/2000
	ajax.then(function(value) {
		console.dir(value);
		$scope.myinfo = value.data;
	}, function(reason) {
		console.dir(reasone);
		alert("error...");
	});
	
	$scope.submit = function() {
		var ajax = $http.put(URL.PUT_ITEM_MODIFY_BASE + $scope.myinfo.id, {
			id 			: $scope.myinfo.id,
			email 		: $scope.myinfo.email,
			name 		: $scope.myinfo.name,
			password 	: $scope.myinfo.password,
			cmoney	 	: $scope.myinfo.cmoney,
			coupon	 	: $scope.myinfo.coupon
		});
		
		ajax.then(function(response) {
			console.dir(response.data);
			$location.path("/list");
		}, function(response) {
			console.dir(response.data);
		});
		
	};
	
	
});
