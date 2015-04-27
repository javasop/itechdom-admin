angular.module "itechdomAdmin"
.directive('widgetBox', () ->
  templateUrl: 'components/widgetBox/widgetBoxContent/widgetBoxContent.html'
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->

)
