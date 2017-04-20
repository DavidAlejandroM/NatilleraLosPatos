angular.module('MenuController', [])

  .controller('MenuController', function($scope, $state)
  {
    $scope.goToSocios = function()
    {
      $state.go('app.socios');
    };

    $scope.goToMensualidad = function()
    {
      $state.go('app.mensualidad');
    };

    $scope.goToPrestamo = function()
    {
      $state.go('app.prestamo');
    };

  });
