angular.module('SociosListaController', [])

  .controller('SociosListaController', function($scope, $state)
  {
    $scope.agregarSocio = function()
    {
      $state.go('app.registro_socio');
    }
  });
