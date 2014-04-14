module.exports = (robot) ->
  robot.hear /こんにち(は|わ)/, (msg) ->
    msg.send "こんにちは"

  robot.hear /わいわい/, (msg) ->
    msg.send "わいわい"

  robot.hear /アルギニン/, (msg) ->
    msg.send "1日5g以上摂取してはいけませんよ。クエン酸も一緒にね。"

  robot.hear /もっちもち/, (msg) ->
    msg.send "またニーソのかわいい女の子を見つけたんですね。"

  robot.hear /進捗ダメです/, (msg) ->
    msg.send "研究しろ！"

  robot.hear /進捗(?!ダメです)/, (msg) ->
    msg.send "進捗どうでしょう？"

  robot.hear /Emacs/, (msg) ->
    msg.send "最高！"

  robot.hear /悪女/, (msg) ->
    msg.send "もしかして：みなみん"

  robot.hear /めでたい/, (msg) ->
    msg.send ":bamboo:寿:bamboo:"

  robot.hear /寿司/, (msg) ->
    msg.send ":sushi:"

  robot.hear /ビール/, (msg) ->
    msg.send ":beer:"

  robot.hear /お腹へった/, (msg) ->
    msg.send ":sushi:"
