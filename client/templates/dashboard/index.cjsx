DashboardIndex = ReactMeteor.createClass
  templateName: 'dashboardIndex'
  startMeteorSubscriptions: ->
    #Meteor.subscribe 'players'
    return
  getMeteorState: ->
    messages: Messages.find().fetch()

  render: ->
    return (
      <div>
        <h1>Recent Messages</h1>
        <MessagesList messages={@state.messages} />
      </div>
    )

MessagesList = React.createClass
  render: ->
    messagesList = @props.messages.map (message) ->
      <MessageContent key={message._id} description={message.description} />

    return (
      <div className="messages-list">
        <h4>List of messages</h4>
        {messagesList}
      </div>
    )

MessageContent = React.createClass
  render: ->
    <p>{@props.description}</p>
