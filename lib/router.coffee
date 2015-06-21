Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  controller: 'PublicController'
  trackPageView: true

Router.route "/",
  name: 'publicIndex'
  controller: PublicController

Router.route '/dashboard',
  name: 'dashboardIndex'
  controller: AdminController


goToDashboard = ->
  if Meteor.user()
    Router.go('dashboard')
  @next()

Router.onBeforeAction goToDashboard,
  only: 'publicIndex'
