angular.module 'itechdomAdmin', ['ui.router', 'ui.bootstrap','itechdomAdmin.blog','itechdomAdmin.user']
  .config ($stateProvider, $urlRouterProvider) ->

    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainCtrl",
        params:{ icon: 'home'}


    $urlRouterProvider.otherwise '/'

  .constant("host","http://www.itechdom.com/")

