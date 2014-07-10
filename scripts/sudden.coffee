# Description:
#   Cry TOTSUZEN NO something
#
# Dependencies:
#   "sudden-death": "~0.1.0"
#
# Configuration:
#   None
#
# Commands:
#   hubot 突然の* - cries that happened suddenly

SuddenDeath = require 'sudden-death'

module.exports = (robot) ->
  robot.respond /(突然の.*)/i, (msg) ->
    msg.send (new SuddenDeath msg.match[1]).say()
