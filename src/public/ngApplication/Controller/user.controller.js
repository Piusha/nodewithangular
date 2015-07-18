'use strict'
var app = angular.module('Application');

app.controller('UserController',['$scope','User',function($scope,User){

	$scope.users = {};
	User.getUsers(function(data){
		$scope.users = data;
	});


}]);