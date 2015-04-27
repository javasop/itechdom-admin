angular.module "itechdomAdmin"
.directive('sidebarItem', () ->
  templateUrl: 'components/sidebar/sidebarItem/sidebarItem.html'
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope,$location) ->


)
