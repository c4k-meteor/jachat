Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  controller: 'PublicController'
  trackPageView: true

Router.route "/",
  name: 'dashboardIndex'
  controller: PublicController

# Router.route '/dashboard',
#   name: 'dashboard'
#   controller: DashboardController
#
#
# goToDashboard = ->
#   if Meteor.user()
#     Router.go('dashboard')
#   @next()
#
# Router.onBeforeAction goToDashboard,
#   only: 'homePage'
