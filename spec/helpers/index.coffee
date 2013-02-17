process.env.NODE_ENV ||= 'test'

exports.assert = require('chai').assert
exports.listen = require('./listen')