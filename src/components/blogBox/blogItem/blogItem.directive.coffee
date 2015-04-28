angular.module "itechdomAdmin"
.directive('blogItem', () ->
  templateUrl: 'components/blogBox/blogItem/blogItem.html'
  restrict: 'E'
  transclude:true
  scope:{
    post:"=post"
  }
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope,blogService,$timeout) ->

    $scope.data = blogService.data

    $scope.selectPost = ()->
      $scope.data["currentPost"] = $scope.post


)
