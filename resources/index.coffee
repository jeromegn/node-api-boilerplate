server = require('../config/server')
users = require('./users')

server.get '/users', users.index