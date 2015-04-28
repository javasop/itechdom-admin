angular.module "itechdomAdmin"
.directive('blogItem', () ->
  templateUrl: 'components/blogBox/blogItem/blogItem.html'
  restrict: 'E'
  transclude:true
  scope:{
    post:"=post"
  }
  require:"^blogBox"
  link: (scope, element, attrs,blogBoxCtrl) ->
    scope.toggleMessageWidth = blogBoxCtrl.toggleMessageWidth

  controller: ($rootScope, $scope,blogService,$timeout) ->

    $scope.data = blogService.data

    $scope.selectPost = ()->
      $scope.data["currentPost"] = $scope.post
      #minimize the width of the
      $scope.toggleMessageWidth()

)
