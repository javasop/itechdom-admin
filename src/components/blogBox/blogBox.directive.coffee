angular.module "itechdomAdmin"
.directive('blogBox', () ->
  templateUrl: 'components/blogBox/blogBox.html'
  restrict: 'E'
  transclude:true
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->

)
