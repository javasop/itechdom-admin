angular.module "itechdomAdmin"
.directive('sidebar', () ->
  templateUrl: 'components/sidebar/sidebar.html'
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope,$location,sidebarService,$state,$filter) ->

    $scope.menu = sidebarService.menu

    $scope.$on '$stateChangeSuccess',(event, toState, toParams, fromState, fromParams)->
      to = toState.url
      for value,index in $scope.menu
        if(to == value.url)
          value.checked = true
        else
          value.checked = false

    #format urls from ui router
    uiUrls = $state.get()

    for value,index in uiUrls
      if !value.abstract
        if value.params
          value.icon = value.params.icon
        value.trueUrl = "/#"+value.url
        $scope.menu.push(value)

    $scope.menu = $filter('orderBy')($scope.menu, (route)->
      #sort by home, to make it appear first
      return route.name == "home"
    ,true)



)
