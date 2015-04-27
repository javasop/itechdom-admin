angular.module "itechdomAdmin.blog.service",[]
.service "blogService", ($http,host) ->

  getBlogs:()->
    return $http.get(host+"blog")
