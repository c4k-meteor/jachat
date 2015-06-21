PublicIndex = ReactMeteor.createClass
  templateName: 'publicIndex'

  loginCallback: (error) ->
    if error
      error.message
    Router.go 'publicIndex'


  loginGithub: ->
    Meteor.loginWithGithub(
      {requestPermissions: ['user', 'public_repo']}, @loginCallback
    )

  render: ->
    <h1>Welcome to React</h1>
    <button ref={@loginGithub}>Github</button>
