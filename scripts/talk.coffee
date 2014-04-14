module.exports = (robot) ->
  robot.hear /こんにち(は|わ)/, (msg) ->
    msg.send "こんにちは"

  robot.hear /わいわい/, (msg) ->
    msg.send "わいわい"

  robot.hear /アルギニン/, (msg) ->
    msg.send "1日5g以上摂取してはいけませんよ。クエン酸も一緒にね。"

  robot.hear /もっちもち/, (msg) ->
    msg.send "またニーソのかわいい女の子を見つけたんですね。"

  robot.hear /進捗/, (msg) ->
    msg.send "進捗どうでしょう？"

  robot.hear /進捗ダメです/, (msg) ->
    msg.send "研究しろ！"
