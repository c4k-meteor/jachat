@AdminController = RouteController.extend
  layoutTemplate: "adminLayout"

  # onBeforeAction: ->
  #   if !Meteor.user()
  #     if Meteor.loggingIn()
  #       @render @loadingTemplate
  #     else
  #       Router.go('/')
  #   @next
