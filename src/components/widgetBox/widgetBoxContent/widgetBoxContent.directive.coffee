angular.module "itechdomAdmin"
.directive('widgetBoxContent', () ->
  templateUrl: 'components/widgetBox/widgetBoxContent/widgetBoxContent.html'
  restrict: 'E'
  transclude:true
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->

)
