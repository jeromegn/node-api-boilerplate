{assert} = require('../helpers')
User = require('../../models/user')

describe 'User', ->
  describe 'constructor methods', ->
    describe 'find', ->
      it 'should call the callback with an array of users', (done)->
        User.find (users)->
          assert.deepEqual users[0],
            first_name: 'Hello'
            last_name: 'World'
            email: 'hello@wor.ld'
          done()