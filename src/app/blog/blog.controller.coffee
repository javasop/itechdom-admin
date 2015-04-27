angular.module "itechdomAdmin.blog",[]
  .config ($stateProvider) ->
    $stateProvider
      .state "blog",
        url: "/blog",
        templateUrl: "app/blog/blog.html",
        controller: "BlogCtrl"
        params: { icon: 'pencil' }


  .controller "BlogCtrl", ($scope,$stateParams) ->
