angular.module('RegistroSocioController', [])

  .controller('RegistroSocioController', function($scope,$ionicPopup,$http)
  {
    $scope.usuario = {
      nombres: "",
      apellidos: "",
      identificacion: null,
      correo: "",
      celular: null,
      tipoSocio: 1
    };

    $scope.clickGuardar = function()
    {
      if($scope.validarCampos())
      {
        var b = $scope.httpGuardarusuario();

        while (b != null || b != undefined || b != 'undefined')
        {

        }
        $scope.alerta('Exitoso','Registro de usuario exitoso.')
      }
      else
      {
        $scope.alerta('Error','Falta información.');
      }
    };

    $scope.alerta = function(titulo, mensaje)
    {
      var alertPopup = $ionicPopup.alert({
        title: titulo,
        template: mensaje,
        okText: 'Aceptar',
        okType: 'button-balanced'
      });

      alertPopup.then(function(res) {

      });
    };

    $scope.validarCampos = function()
    {
      if(($scope.usuario.nombres == "" || $scope.usuario.nombres == null) &&
        ($scope.usuario.apellidos == "" || $scope.usuario.apellidos == null) &&
        ($scope.usuario.identificacion == "" || $scope.usuario.identificacion == null) &&
        ($scope.usuario.correo == "" || $scope.usuario.celular == null) &&
        ($scope.usuario.celular == "" || $scope.usuario.celular == null))
      {
        return false;
      }
      else
      {
        return true;
      }
    };

  });
