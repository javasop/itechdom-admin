angular.module "itechdomAdmin.blog.service",[]
.service "blogService", ($http,host) ->

  #current selected post for preview
  data:{
    currentPost:{}
  }

  getBlogs:()->
    return $http.get(host+"blog")
