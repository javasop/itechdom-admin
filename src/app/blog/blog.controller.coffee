angular.module "itechdomAdmin.blog",["itechdomAdmin.blog.service"]
  .config ($stateProvider) ->
    $stateProvider
      .state "blog",
        url: "/blog",
        templateUrl: "app/blog/blog.html",
        controller: "BlogCtrl"
        params: { icon: 'pencil' }

  .controller "BlogCtrl",($scope,$stateParams,blogService) ->
    blogService.getBlogs().success (data)->
      $scope.posts = data.posts
