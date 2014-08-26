# Description:
#   Display milano time
#
# Dependencies:
#   "request"
#   "cheerio"
#
# Commands:
#   hubot ミラノ|milano
#
# Author:
#   FromAtom

request = require 'request'
cheerio = require 'cheerio'

module.exports = (robot) ->
  robot.respond /(ミラノ|milano)/i, (msg) ->
    url = "http://24timezones.com/ja_jikantai/milan_jikan.php"
    options =
      url: url
      timeout: 2000
      headers: {'user-agent': 'node title fetcher'}

    request options, (error, response, body) ->
      $ = cheerio.load body
      string = $('#currentTime').text().replace(/\n|,/g, '')
      elements = string.split(" ").reverse()

      message = "ミラノは今 #{elements[0]}年#{elements[1]}#{elements[2]}日 (#{elements[3]}) #{elements[4]} です。"

      msg.send(message)
