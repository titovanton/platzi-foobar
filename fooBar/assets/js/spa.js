;angular.module('Platzi', []);
angular.module('Platzi').controller('BaseCtrl', ['$scope', function($scope) {

  $scope.things = [{
    id: 23423,
    name: 'foo'
  }];

}]);
