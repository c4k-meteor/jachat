@PasswordChangeForm = React.createClass
  onSubmit: (e) ->
    e.preventDefault()

    password    = React.findDOMNode(@refs.password).value.trim()
    return unless password

    Accounts.resetPassword Router.current().params.resetToken, password, (error) ->
      if error
        if error.error == 403
          FlashMessages.sendError('Password not updated. The token is invalid.')
      else
        FlashMessages.sendInfo('Password has been updated. Have a nice day.')
        Router.go('/dashboard')

  render: ->
    <form role="form" onSubmit={@onSubmit}>
      <fieldset>
        <div className="form-group">
          <label>Set your new password (min. 6 characters)</label>
          <input className="form-control" name="password" ref="password" autofocus="" type="text" />
        </div>
        <button className="btn btn-lg btn-success btn-block">Update password</button>
        <div className="form-group">
          <p><a href="/login" title="Log in with your existent account">Login</a></p>
          <p>Don't have an account? <a href="/signup" title="create a free account">Create one</a></p>
        </div>
      </fieldset>
    </form>
