server = require('./config/server')

# Load the resources
require './resources'

server.listen server.get('port'), ->
  console.log "Server listening on port #{server.get('port')}"