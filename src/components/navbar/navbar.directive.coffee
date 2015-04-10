angular.module "itechdomAdmin"
.directive('navbar', () ->
  templateUrl: 'components/navbar/navbar.html'
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope,$anchorScroll,$location,$timeout) ->


    $scope.$on '$stateChangeSuccess',(event, toState, toParams, fromState, fromParams)->
      #if it's home and there's hash, scroll to it
      if toState.url == "/" and $location.hash()
        $timeout(()->
          $anchorScroll()
        , 100)

    $scope.scrollTo = ()->
      $anchorScroll()

    $scope.checked = false

    $scope.check = ()->
      $scope.checked = !$scope.checked

    $scope.leftMenu = [
      {"title":"Home","url":"/"},
      {"title":"Services","url":"/#/#Services"}
      {"title":"About Us","url":"/#/about"}
    ]
    $scope.rightMenu = [
      {"title":"Portfolio","url":"/#/#Portfolio"},
      {"title":"Contact","url":"/#/#Contact"}
      {"title":"Blog","url":"/#/blog"}
    ]


)
