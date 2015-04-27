angular.module "itechdomAdmin"
.directive('sidebar', () ->
  templateUrl: 'components/sidebar/sidebar.html'
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope,$anchorScroll,$location,$timeout,sidebarService) ->

    $scope.menu = sidebarService.menu

    $scope.checked = false

    $scope.check = ()->
      $scope.checked = !$scope.checked

    $scope.menu.push({"title":"Home","url":"/"})
    $scope.menu.push({"title":"Blog","url":"/blog"})



)
