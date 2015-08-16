ResetPassword = ReactMeteor.createClass
  templateName: 'resetPassword'

  displayForm: ->
    if Router.current().params.resetToken
      console.log  Router.current().params.resetToken
      <PasswordChangeForm />
    else
      <PasswordRecoveryForm />

  render: ->
    <div className="row">
      <div className="col-md-4 col-md-offset-4">
        <div className="login-panel panel panel-default">
          <div className="panel-heading">
            <h3 className="panel-title">Forgot password</h3>
          </div>
          <div className="panel-body">
            {@displayForm()}
          </div>
        </div>
      </div>
    </div>
