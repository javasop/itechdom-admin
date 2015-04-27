angular.module "itechdomAdmin"
.directive('widgetBoxTitle', () ->
  templateUrl: 'components/widgetBox/widgetBoxTitle/widgetBoxTitle.html'
  restrict: 'E'
  transclude:true
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->

)
