User = require('../models/user')

module.exports =
  index: (req, res, next) ->
    User.find (users)->
      res.send(users)