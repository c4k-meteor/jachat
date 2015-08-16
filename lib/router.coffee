Router.configure
  layoutTemplate: "publicLayout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  controller: 'PublicController'
  #trackPageView: true

Router.route "/",
  name: 'publicIndex'
  controller: PublicController

Router.route "/login",
  name: 'login'
  controller: PublicController

Router.route "/signup",
  name: 'signup'
  controller: PublicController

Router.route "/reset-password/:resetToken?",
  name: 'resetPassword'
  controller: PublicController

Router.route '/dashboard',
  name: 'dashboardIndex'
  controller: AdminController

# goToDashboard = ->
#   if Meteor.user()
#     Router.go('dashboardIndex')
#   @next()

# Router.onBeforeAction goToDashboard,
#   only: 'publicIndex'
