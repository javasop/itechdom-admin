angular.module "itechdomAdmin"
.directive('sidebar', () ->
  templateUrl: 'components/sidebar/sidebar.html'
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope,$anchorScroll,$location,$timeout,sidebarService) ->

    $scope.menu = sidebarService.menu

    $scope.$on '$stateChangeSuccess',(event, toState, toParams, fromState, fromParams)->
      to = toState.url
      for value,index in $scope.menu
        if(to == value.trueUrl)
          value.checked = true
        else
          value.checked = false


    $scope.menu.push({"title":"Home","url":"/#/","trueUrl":"/"})
    $scope.menu.push({"title":"Blog","url":"/#/blog","trueUrl":"/blog"})



)
