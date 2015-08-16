@LoginForm = React.createClass
  onSubmit: (e) ->
    e.preventDefault()

    email    = React.findDOMNode(@refs.email).value.trim()
    password = React.findDOMNode(@refs.password).value.trim()
    return unless email && password

    Meteor.loginWithPassword email, password, (error) ->
      if error
        FlashMessages.sendError(error)
      else
        Router.go('/dashboard')

  render: ->
    <form role="form" onSubmit={@onSubmit}>
      <fieldset>
        <div className="form-group">
          <label>E-Mail</label>
          <input className="form-control" placeholder="Your email..." name="email" ref="email" autofocus="" type="email" />
        </div>
        <div className="form-group">
          <label>Password</label>
          <input className="form-control" name="password" ref="password" type="password" />
        </div>
        <div className="form-group">
          <p>Don't have an account? <a href="/signup" title="create a free account">Create one</a></p>
          <p><a href="/reset-password" title="create a free account">Forgot your password?</a></p>
        </div>
        <button className="btn btn-lg btn-success btn-block">Login</button>
      </fieldset>
    </form>
