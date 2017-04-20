angular.module('RegistroSocioController', [])

  .controller('RegistroSocioController', function($scope)
  {
    $scope.usuario = {
      nombres: "",
      apellidos: "",
      identificacion: null,
      correo: "",
      celular: null,
      tipoSocio: null
    }
  });
