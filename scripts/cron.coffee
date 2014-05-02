cron = require('cron').CronJob

module.exports = (robot) ->
   # utility function
   send = (room, msg) -> (new robot.Response(robot, {user : {id : -1, name : room}, text : "none", done : false}, [])).send msg

   # *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
   cron '0 0 13 * * *', () ->
     send "#all", "testtest"
