PublicIndex = ReactMeteor.createClass
  templateName: 'publicIndex'

  loginCallback: (error) ->
    if error
      console.log error.message

  loginGithub: (e) ->
    e.preventDefault()
    Meteor.loginWithGithub({}, @loginCallback)

  logoutUser: (e) ->
    e.preventDefault()
    Meteor.logout (error) ->
      if error
        console.log error.message

  currentUser: ->
    Meteor.user().profile.name if Meteor.user()

  render: ->
    <div className="jorge">
      <h2>Welcome to React {@currentUser()}</h2>
      <div className="chat-panel">
        <a href="" onClick={@loginGithub}>Login with Github</a> |
        <a href="" onClick={@logoutUser}>Logout with Github</a>
      </div>
    </div>
