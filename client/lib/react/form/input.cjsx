@InputEmail = React.createClass

  render: ->
    <div className="form-group">
      <label>{@props.label}</label>
      <input className="form-control" placeholder={@props.placeholder} name={@props.fieldName} ref={@props.fieldName} defaultValue={@props.fieldValue} type="email" />
    </div>

@InputPassword = React.createClass

  render: ->
    <div className="form-group">
      <label>{@props.label}</label>
      <input className="form-control" placeholder={@props.placeholder} name={@props.fieldName} ref={@props.fieldName} defaultValue={@props.fieldValue} type="password" />
    </div>

@InputText = React.createClass

  render: ->
    <div className="form-group">
      <label>{@props.label}</label>
      <input className="form-control" placeholder={@props.placeholder} name={@props.fieldName} ref={@props.fieldName} defaultValue={@props.fieldValue} type="text" />
    </div>
