@Button = React.createClass

  render: ->
    <button className={@props.setClass}>{@props.name}</button>
