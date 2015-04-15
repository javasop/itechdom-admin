angular.module 'itechdomAdmin', ['ui.router', 'ui.bootstrap']
  .config ($stateProvider, $urlRouterProvider) ->

    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainCtrl"

    $stateProvider
      .state "blog",
        url: "/blog",
        templateUrl: "app/main/blog.html",
        controller: "BlogCtrl"

    $stateProvider
      .state "user",
        url: "/user",
        templateUrl: "app/main/main.html",
        controller: "UserCtrl"


    $urlRouterProvider.otherwise '/'

