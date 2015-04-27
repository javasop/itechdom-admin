angular.module "itechdomAdmin"
.directive('widgetBox', () ->
  templateUrl: 'components/widgetBox/widgetBox.html'
  restrict: 'E'
  transclude:true
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->

)
