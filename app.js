(function() {
  'use strict';

  angular.module('myApp', [
    'ngRoute',
    'myApp.demo'
  ])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider.otherwise({redirectTo: '/demo'});
  }]);

  angular.module('myApp.demo', ['ngRoute'])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/demo', {
      templateUrl: 'partials/demo.html',
      controller: 'DemoCtrl'
    });
  }])

  .controller('DemoCtrl', [function() {

  }]);


})();
