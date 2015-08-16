@PasswordRecoveryForm = React.createClass
  onSubmit: (e) ->
    e.preventDefault()

    email    = React.findDOMNode(@refs.email).value.trim()
    return unless email

    Accounts.forgotPassword {email: email}, (error) ->
      if error
        if error.error == 403
          FlashMessages.sendError('That email already exists. Please login to access.')
      else
        FlashMessages.sendInfo('Email with instructions sent. Please check your email.')

  render: ->
    <form role="form" onSubmit={@onSubmit}>
      <fieldset>
        <div className="form-group">
          <label>E-Mail</label>
          <input className="form-control" placeholder="Your email..." name="email" ref="email" autofocus="" type="email" />
        </div>
        <button className="btn btn-lg btn-info btn-block">Recover password</button>
        <div className="form-group">
          <p><a href="/login" title="Log in with your existent account">Login</a></p>
          <p>Don't have an account? <a href="/signup" title="create a free account">Create one</a></p>
        </div>
      </fieldset>
    </form>
