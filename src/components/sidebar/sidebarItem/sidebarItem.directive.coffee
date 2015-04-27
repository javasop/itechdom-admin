angular.module "itechdomAdmin"
.directive('sidebarItem', () ->
  templateUrl: 'components/sidebar/sidebarItem/sidebarItem.html'
  restrict: 'E'
  replace:true
  scope:{
    item:"=item"
  }
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope,$location) ->
    $scope.checked = false



)
