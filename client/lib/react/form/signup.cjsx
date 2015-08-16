@SignupForm = React.createClass
  onSubmit: (e) ->
    e.preventDefault()

    email    = React.findDOMNode(@refs.email).value.trim()
    password = React.findDOMNode(@refs.password).value.trim()
    return unless email && password

    Accounts.createUser {email: email, password : password}, (error) ->
      if error
        if error.error == 403
          FlashMessages.sendError('That email already exists. Please login to access.')

  render: ->
    <form role="form" onSubmit={@onSubmit}>
      <fieldset>
        <div className="form-group">
          <label>E-Mail</label>
          <input className="form-control" placeholder="Your email..." name="email" ref="email" autofocus="" type="email" />
        </div>
        <div className="form-group">
          <label>Password (min. 6 characters)</label>
          <input className="form-control" name="password" ref="password" />
        </div>
        <div className="form-group">
          <p>Already have an account? <a href="/login" title="create a free account">Login</a></p>
        </div>
        <button className="btn btn-lg btn-success btn-block">Create account</button>
      </fieldset>
    </form>
