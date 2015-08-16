Signup = ReactMeteor.createClass
  templateName: 'signup'

  render: ->
    <div className="row">
      <div className="col-md-4 col-md-offset-4">
        <div className="login-panel panel panel-default">
          <div className="panel-heading">
            <h3 className="panel-title">Create a free account</h3>
          </div>
          <div className="panel-body">
            <SignupForm />
          </div>
        </div>
      </div>
    </div>
