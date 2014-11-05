# Description:
#   進捗どうですか？ - How is the progress? -
#
# Author:
#   FromAtom

module.exports = (robot) ->
  robot.hear /進捗(は)?(どうですか|ありますか)/, (msg) ->
    imageMe msg, '進捗どうですか', (url) ->
      sleep 1000
      msg.send url

  robot.hear /進捗(ダメ|だめ)です/, (msg) ->
    imageMe msg, '進捗ダメです', (url) ->
      sleep 1000
      msg.send url

sleep = (ms) ->
  start = new Date().getTime()
  continue while new Date().getTime() - start < ms

imageMe = (msg, query, animated, faces, cb) ->
  cb = animated if typeof animated == 'function'
  cb = faces if typeof faces == 'function'
  q = v: '1.0', rsz: '8', q: query, safe: 'active'
  q.imgtype = 'animated' if typeof animated is 'boolean' and animated is true
  q.imgtype = 'face' if typeof faces is 'boolean' and faces is true
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(q)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData?.results
      if images?.length > 0
        image  = msg.random images
        cb "#{image.unescapedUrl}#.png"
