Login = ReactMeteor.createClass
  templateName: 'login'

  render: ->
    <div className="row">
      <div className="col-md-4 col-md-offset-4">
        <div className="login-panel panel panel-default">
          <div className="panel-heading">
            <h3 className="panel-title">Please Sign In</h3>
          </div>
          <div className="panel-body">
            <LoginForm />
          </div>
        </div>
      </div>
    </div>
