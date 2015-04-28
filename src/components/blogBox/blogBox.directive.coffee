angular.module "itechdomAdmin"
.directive('blogBox', () ->
  templateUrl: 'components/blogBox/blogBox.html'
  restrict: 'E'
  transclude:true
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->

    $scope.MIN_MESSAGE_WIDTH = "col-md-1"
    $scope.MAX_MESSAGE_WIDTH = "col-md-2"

    $scope.messageWidth= "col-md-3"

    @toggleMessageWidth = ()->
      $scope.messageWidth = $scope.MAX_MESSAGE_WIDTH




)
