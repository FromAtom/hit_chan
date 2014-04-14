request = require 'request'
cheerio = require 'cheerio'

module.exports = (robot) ->
  robot.respond /(ミラノ|milano)/, (msg) ->
    url = 'http://24timezones.com/ja_time/italy_milano_clock.php'
    options =
      url: url
      timeout: 2000
      headers: {'user-agent': 'node title fetcher'}

    request options, (error, response, body) ->
      $ = cheerio.load body
      milano_time = $('#currentTime').text().replace(/\n/g, '')
      msg.send(milano_time)
