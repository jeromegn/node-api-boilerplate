process.env.NODE_ENV ||= 'development'

module.exports = require("./environments/#{process.env.NODE_ENV}")