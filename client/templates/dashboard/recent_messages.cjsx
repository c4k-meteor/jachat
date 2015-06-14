RecentMessages = ReactMeteor.createClass
  templateName: 'recentMessages'
  startMeteorSubscriptions: ->
    #Meteor.subscribe 'players'
    return
  getMeteorState: ->
    messages: Messages.find().fetch()

  render: ->
    return (
      <h1>Recent Messages</h1>
      <div className="chat-panel panel panel-default">
        <div className="panel-heading">
          <i className="fa fa-comments fa-fw"></i> List of messages
        </div>
        <MessagesList messages={@state.messages} />
        <NewMessageForm />
      </div>
    )

MessagesList = React.createClass
  render: ->
    messagesList = @props.messages.map (message) ->
      <MessageContent key={message._id} description={message.description} createdAt={message.createdAt} />

    return (
      <div className="panel-body">
        <ul className="chat">
          {messagesList}
        </ul>
      </div>
    )

MessageContent = React.createClass
  render: ->
    <li className="left clearfix">
      <div className="chat-body clearfix">
        <div className="header">
          <small className="pull-right text-muted">
            <i className="fa fa-clock-o fa-fw"></i> {moment(@props.createdAt).fromNow()}
          </small>
          <p>{@props.description}</p>
        </div>
      </div>
    </li>

NewMessageForm = React.createClass
  handleSubmit: (e) ->
    e.preventDefault()
    description = React.findDOMNode(@refs.description).value.trim()
    return unless description
    Messages.insert({description: description})
    React.findDOMNode(@refs.description).value = ''

  render: ->
    <div className="panel-footer">
      <form onSubmit={@handleSubmit}>
        <div className="input-group">
            <input type="text" className="form-control input-sm" ref="description" placeholder="Type your message here..." />
            <span className="input-group-btn">
              <button className="btn btn-warning btn-sm">
                Send Message
              </button>
            </span>
        </div>
      </form>
    </div>
