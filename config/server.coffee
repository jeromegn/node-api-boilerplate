Express = require('express')
config = require('./index')
logger = require('./logger')
server = Express()

for key, value of config
  server.set key, value

server.use logger.middleware()

module.exports = server