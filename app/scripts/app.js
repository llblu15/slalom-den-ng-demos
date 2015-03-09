'use strict';
angular
  .module('slalom.demo', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'ngMaterial',
    'ngLodash',
    'ui.bootstrap'
  ])
  .controller('mainCtrl', ['$scope', function ($scope) {
    $scope.newTask = {};
    $scope.tasks = [];
    $scope.saveTask = function (ev) {
      if(ev.keyCode === 13 && $scope.addItem.$valid){
        $scope.tasks.push($scope.newTask);
        $scope.newTask = {};
      }
    }
  }]);

