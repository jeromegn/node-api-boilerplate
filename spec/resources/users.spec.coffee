{assert, listen} = require('../helpers')
request = require('request')
config = require('../../config')

describe 'Users resource', ->
  describe 'GET /users', ->

    before listen

    it 'should return a json array of users', (done)->
      request.get "http://#{config.hostname}:#{config.port}/users", json: true, (error, response, users)->
        assert.deepEqual users[0],
          first_name: 'Hello'
          last_name: 'World'
          email: 'hello@wor.ld'
        done(error)