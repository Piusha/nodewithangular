'use strict'
var app = angular.module('Application');

app.service('User', ['$http',function($http){

	//Get User list from the Service
	this.getUsers = function(callBack){

		$http.get('/users').success(function(data){
			callBack(data);
		});
		
	};

}]);