module.exports = (robot) ->
  robot.hear /(hit|ひっと|ヒット)ちゃん/i, (msg) ->
    msg.send "HITちゃんだよー。よろしくね。"

  robot.hear /こんにち(は|わ)/, (msg) ->
    msg.send "こんにちは！"

  robot.hear /こんばん(は|わ)/, (msg) ->
    msg.send "こんばんは！"

  robot.hear /おはよう/, (msg) ->
    msg.send "おはようございます！"

  robot.hear /わいわい/, (msg) ->
    msg.send "わいわい"

  robot.hear /アルギニン/, (msg) ->
    msg.send "1日5g以上摂取してはいけませんよ。クエン酸も一緒にね。"

  robot.hear /もっちもち/, (msg) ->
    msg.send "またニーソのかわいい女の子を見つけたんですね。"

  robot.hear /進捗(ダメ|だめ)です/, (msg) ->
    msg.send "研究しろ！"

  robot.hear /進捗(?!ダメです)/, (msg) ->
    msg.send "進捗どうでしょう？"

  robot.hear /Emacs/, (msg) ->
    msg.send "Emacs最高！"

  robot.hear /めでたい/, (msg) ->
    msg.send ":bamboo:寿:bamboo:"

  robot.hear /寿司/, (msg) ->
    msg.send ":sushi:"

  robot.hear /ビール/, (msg) ->
    @beers = [":beers:", ":beer:"]
    msg.send @beers[Math.floor(Math.random() * @beers.length)]

  robot.hear /疲れ/, (msg) ->
    @drinks = [":tea:", ":coffee:", ":tropical_drink:", ":sake:", ":wine_glass:", ":cocktail:"]
    msg.send @drinks[Math.floor(Math.random() * @drinks.length)]

  robot.hear /電池/, (msg) ->
    msg.send ":battery:"

  robot.hear /(麻雀|マージャン|まーじゃん)/, (msg) ->
    msg.send ":mahjong::mahjong::mahjong:"

  robot.hear /(腹|はら|ハラ)(?:|が|ガ)(減|へ|ヘ)(?:|った|ッタ)/, (msg) ->
    @foods = [
      ":sushi:", ":pizza:", ":hamburger:", ":fries:", ":poultry_leg:",
      ":meat_on_bone:", ":spaghetti:", ":curry:", ":fried_shrimp:",
      ":bento:", ":sushi:", ":rice_ball:", ":ramen:", ":oden:", ":egg:"
    ]
    message = @foods[Math.floor(Math.random() * @foods.length)]
    msg.send message
