# Description
#   <description of the scripts functionality>
#
# Dependencies:
#   "<module name>": "<module version>"
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot <trigger> - <what the respond trigger does>
#   <trigger> - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   <github username of the original script author>

cronJob = require('cron').CronJob

module.exports = (robot) ->
  # *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
  new cronJob('0 0 * * * *', () ->
    robot.send {room: '#hubot'}, '@yucato_ cron によって発言しています'
  ).start()
