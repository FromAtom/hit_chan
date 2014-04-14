module.exports = (robot) ->
  robot.hear /こんにち(は|わ)/, (msg) ->
    msg.send "こんにちは"

  robot.hear /わいわい/, (msg) ->
    msg.send "わいわい"

  robot.hear /アルギニン/, (msg) ->
    msg.send "1日5g以上摂取してはいけませんよ。クエン酸も一緒にね。"
    
