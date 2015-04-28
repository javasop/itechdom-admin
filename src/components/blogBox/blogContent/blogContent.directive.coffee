angular.module "itechdomAdmin"
.directive('blogContent', () ->
  templateUrl: 'components/blogBox/blogContent/blogContent.html'
  restrict: 'E'
  transclude:true
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope,blogService) ->

    $scope.data = blogService.data

    $scope.$watch('data.currentPost',(newVal,oldVal)->
      console.log newVal
    )


)
