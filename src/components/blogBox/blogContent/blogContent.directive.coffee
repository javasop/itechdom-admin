angular.module "itechdomAdmin"
.directive('blogContent', () ->
  templateUrl: 'components/blogBox/blogContent/blogContent.html'
  restrict: 'E'
  transclude:true
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->

)
