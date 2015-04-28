angular.module "itechdomAdmin"
.directive('blogContent', () ->
  templateUrl: 'components/blogBox/blogContent/blogContent.html'
  restrict: 'E'
  transclude:true
  require:"^blogBox"
  link: (scope, element, attrs,blogBoxCtrl) ->

  controller: ($rootScope, $scope,blogService) ->

    $scope.data = blogService.data


)
