# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

  #3)
  robot.hear /cocacola/i, (res) ->
    res.send ".... para que preguntas si es obvio"

  robot.hear /cumpleaños de Michell/i, (res) ->
    res.send "05/09/1989"

  robot.hear /cumpleaños de Alex/i, (res) ->
    res.send "11/12/1987"

  robot.hear /cumpleaños de Hernan/i, (res) ->
    res.send "04/07/1987"

  robot.hear /cumpleaños de Miguel/i, (res) ->
    res.send "30/12/1988"

  robot.hear /Quien es el mas tata/i, (res) ->
    res.send "El Hernan"

  robot.hear /Cuando me aumentarán/i, (res) ->
    res.send "mmmmm sigue intentando"

  robot.hear /Y Daniel?/i, (res) ->
    res.send "Cual Daniel?"

  robot.hear /Cuanto falta para terminar el diplomado/i, (res) ->
    res.send "...En 3....2........ :bomb: :boom:"

  robot.hear /Horario laboral/i, (res) ->
    res.send "de 9 a 6"

  robot.hear /DONE/i, (res) ->
    res.send ":mechanical_arm:"

  robot.hear /A quién amas?/i, (res) ->
    res.send ":smiling_face_with_3_hearts: EEEEEEvaaaaaa"

  #4)
  enterReplies = ['Hi', 'Trabaja', 'No tienes amigos es?', ':|']

  robot.hear /hola/i, (res) ->
    res.send res.random enterReplies

  #Despedidas
  robot.enter (res) ->
     res.send res.random enterReplies
  
  #5)
  robot.hear /Reunión/i, (res) ->
    room = "diplomado"
    robot.messageRoom room, "@canal Unanse a la reu"

  robot.hear /buenos dias/i, (res) ->
    room = "diplomado"
    robot.messageRoom room, "Hola! Buenas equipo, que tengan un excelente día."

  robot.hear /clases/i, (res) ->
    room = "diplomado"
    robot.messageRoom room, "Go Go Go ... A clases :bulb: "

  #6)
  robot.hear /Quién es el (.+) de la célula??/i, (res) ->
    rol = res.match[1]
    if rol is "PO"
      res.reply "La PO de la Célula es Michell."
    else if rol is "Tester"
      res.reply "El Tester de la Célula es Alexander."
    else if rol is "QA"
      res.reply "El QA de la Célula es Daniel."
    else if rol is "Desarrollador"
      res.reply "El Desarrollador de la Célula es Hernan."
    else if rol is "SRE"
      res.reply "El Desarrollador de la Célula es Miguel."
    else
      res.reply "El #{rol} no se encuentra en la Célula"

  #7)
  roles = ['PO Michell', 'Tester Alexander', 'QA Daniel', 'Desarrollador Hernan', 'SRE Miguel']

  robot.hear /Roles/i, (res) ->
    res.send res.random roles

  #8)
  #execute test slack
  #HUBOT_SLACK_TOKEN=xoxb-1998040481607-2013132795699-Wig5OrJ3vCAq7P9hJBtUa7By ./bin/hubot --adapter slack

  
  #
  # robot.respond /open the (.*) doors/i, (res) ->
  #   doorType = res.match[1]
  #   if doorType is "pod bay"
  #     res.reply "I'm afraid I can't let you do that."
  #   else
  #     res.reply "Opening #{doorType} doors"
  #
  # robot.hear /I like pie/i, (res) ->
  #   res.emote "makes a freshly baked pie"
  #
  # lulz = ['lol', 'rofl', 'lmao']
  #
  # robot.respond /lulz/i, (res) ->
  #   res.send res.random lulz
  #
  # robot.topic (res) ->
  #   res.send "#{res.message.text}? That's a Paddlin'"
  #
  #
  #enterReplies = ['Hi', 'Trabaja', 'No tienes amigos es?', ':|']
  # leaveReplies = ['Are you still there?', 'Target lost', 'Searching']
  #
  #robot.hear /Hola/i, (res) ->
  #  res.send res.random enterReplies
  # robot.enter (res) ->
  #   res.send res.random enterReplies
  # robot.leave (res) ->
  #   res.send res.random leaveReplies
  #
  # answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING
  #
  # robot.respond /what is the answer to the ultimate question of life/, (res) ->
  #   unless answer?
  #     res.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
  #     return
  #   res.send "#{answer}, but what is the question?"
  #
  # robot.respond /you are a little slow/, (res) ->
  #   setTimeout () ->
  #     res.send "Who you calling 'slow'?"
  #   , 60 * 1000
  #
  # annoyIntervalId = null
  #
  # robot.respond /annoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #     return
  #
  #   res.send "Hey, want to hear the most annoying sound in the world?"
  #   annoyIntervalId = setInterval () ->
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #   , 1000
  #
  # robot.respond /unannoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "GUYS, GUYS, GUYS!"
  #     clearInterval(annoyIntervalId)
  #     annoyIntervalId = null
  #   else
  #     res.send "Not annoying you right now, am I?"
  #
  #
  # robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
  #   room   = req.params.room
  #   data   = JSON.parse req.body.payload
  #   secret = data.secret
  #
  #   robot.messageRoom room, "I have a secret: #{secret}"
  #
  #   res.send 'OK'
  #
  # robot.error (err, res) ->
  #   robot.logger.error "DOES NOT COMPUTE"
  #
  #   if res?
  #     res.reply "DOES NOT COMPUTE"
  #
  # robot.respond /have a soda/i, (res) ->
  #   # Get number of sodas had (coerced to a number).
  #   sodasHad = robot.brain.get('totalSodas') * 1 or 0
  #
  #   if sodasHad > 4
  #     res.reply "I'm too fizzy.."
  #
  #   else
  #     res.reply 'Sure!'
  #
  #     robot.brain.set 'totalSodas', sodasHad+1
  #
  # robot.respond /sleep it off/i, (res) ->
  #   robot.brain.set 'totalSodas', 0
  #   res.reply 'zzzzz'
