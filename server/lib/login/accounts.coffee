Accounts.onCreateUser (options, user) ->
  user.profile = options.profile if options.profile
  if user.services.github?
    console.log 'Github exists'
    user.emails = [] unless user.emails?
    user.emails.push { address: user.services.github.email, verified: true }

  user
