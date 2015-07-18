'use strict'

var app = angular.module('Application',['ngRoute']);

app.config(['$routeProvider',function($routeProvider){
	$routeProvider.
	when('/',{
		templateUrl:"templates/index.tmpl.html",
	}).
	when('/users',{
		templateUrl:"templates/user.tmpl.html",
		

	});



}]);