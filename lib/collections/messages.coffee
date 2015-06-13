Schemas.message = new SimpleSchema
  userId:
    type: String
    label: 'User'
    index: true
    optional: true
    denyUpdate: true

  description:
    type: String
    label: 'Message text'
    index: true
    max: 480
    denyUpdate: true

  chatRoom:
    type: String
    label: 'Chat Room'
    index: true
    autoValue: ->
      if @isInsert
        return 'MainChat'
      else if @isUpsert
        return $setOnInsert: 'MainChat'
      else
        @unset()
    denyUpdate: true

  createdAt:
    type: Date
    autoValue: ->
      if @isInsert
        return new Date
      else if @isUpsert
        return $setOnInsert: new Date()
      else
        @unset()
    denyUpdate: true
    optional: false
    index: true

Messages.attachSchema(Schemas.message)
