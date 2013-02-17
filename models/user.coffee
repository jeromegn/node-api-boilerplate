# Example `User` model

class User

  @find: (callback)->
    process.nextTick ->
      callback([{
        first_name: 'Hello'
        last_name: 'World'
        email: 'hello@wor.ld'
      }])

module.exports = User