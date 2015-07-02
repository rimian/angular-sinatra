(function() {
  'use strict';

  angular.module('myApp', [
    'ngRoute',
    'myApp.demo'
  ])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider.otherwise({redirectTo: '/demo'});
    $routeProvider.when('/demo', {templateUrl: 'partials/demo.html',controller: 'DemoCtrl'});
  }]);

  angular.module('myApp.demo', ['ngRoute'])
  .controller('DemoCtrl', ['$scope', '$http', function($scope, $http) {
    $scope.demo = {};
    $http.get('/api').then(function(response) {
      $scope.demo.text = 'Demo';
    });
  }]);

})();
