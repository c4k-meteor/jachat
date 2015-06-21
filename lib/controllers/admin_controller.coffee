@AdminController = RouteController.extend
  layoutTemplate: "layout"

  onBeforeAction: ->
    if !Meteor.user()
      if Meteor.loggingIn()
        @render @loadingTemplate
      else
        Router.go('/')
