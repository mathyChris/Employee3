/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("/detail config...")
	
	$routeProvider.when("/detail/:id", {
		templateUrl: "detail.html",
		controller: "detailController"
	});
	
});

app.controller('detailController', function($scope, $http, URL, $routeParams) {
	console.log("detailController...");
	console.log("URL.GET_ITEM_BASE = " + URL.GET_ITEM_BASE);
	console.log("id = " + $routeParams.id);
	
	$scope.$parent.title = "Detail Member View";
	
	
	///////////////////추가
	
	var ajax = $http.get(URL.GET_ITEM_BASE + $routeParams.id); // /member/2000
	ajax.then(function(value) {
		console.dir(value);
		$scope.member = value.data;
	}, function(reason) {
		console.dir(reason);
		alert("error...");
	});
	
	//////////////////////
	
});
