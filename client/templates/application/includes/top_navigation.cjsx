TopNavigation = ReactMeteor.createClass
  templateName: 'topNavigation'

  render: ->
    <TopNavigationLeft />
    <TopNavigationRight />

TopNavigationLeft = React.createClass
  dashboardUrl: ->
    Router.routes['dashboardIndex'].path()

  render: ->
    <nav className="navbar-default col-md-6" role="navigation">
      <div className="navbar-collapse">
        <ul className="nav navbar-top-links" id="side-menu">
          <li>
            <a href={@dashboardUrl()}><i className="fa fa-dashboard fa-fw"></i> Dashboard</a>
          </li>
        </ul>
      </div>
    </nav>

TopNavigationRight = React.createClass

  render: ->
    <ul className="nav navbar-top-links navbar-right">
      <li className="dropdown">
        <a className="dropdown-toggle" data-toggle="dropdown" href="#">
          <i className="fa fa-cog fa-fw"></i> Settings <i className="fa fa-caret-down"></i>
        </a>
        <ul className="dropdown-menu dropdown-messages">
          <li>
            <a href="{{pathFor 'userSettings'}}"><i className="fa fa-user fa-fw"></i> My account</a>
          </li>
          <li>
            <a href="{{pathFor 'helpIndex'}}"><i className="fa fa-info  fa-fw"></i> Help</a>
          </li>
        </ul>
      </li>
      <LogoutLink />
    </ul>

LogoutLink = React.createClass

  logoutUser: (e) ->
    e.preventDefault()
    Meteor.logout (error) ->
      if error
        FlashMessages.sendError(error.message)
      Router.go('/')

  render: ->
    <li>
      <a href="" onClick={@logoutUser}><i className="fa fa-sign-out  fa-fw"></i> Logout {@props.currentUser}</a>
    </li>
