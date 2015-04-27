angular.module "itechdomAdmin.user",[]
  .config ($stateProvider) ->
    $stateProvider
    .state "user",
      url: "/user",
      templateUrl: "app/user/user.html",
      controller: "UserCtrl"
      params: { icon: 'user' }
  .controller "UserCtrl", ($scope) ->
