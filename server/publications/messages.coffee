Messages.allow
  insert: (userId, doc) ->
    true

Messages.deny
  remove: (userId, doc) ->
    true
