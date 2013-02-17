config = require('../../config')

server = require('../../config/server')
require('../../resources')

listening = false
module.exports = (callback)->
  if listening
    process.nextTick callback
    return
  server.listen config.port, ->
    listening = true
    process.nextTick callback