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
    url = "http://www.time-j.net/WorldTime/Location/Europe/Milano"
    options =
      url: url
      timeout: 2000
      headers: {'user-agent': 'node title fetcher'}

    request options, (error, response, body) ->
      $ = cheerio.load body
      string = $('#currentTime').text()

      message = "ミラノは今 #{string} です。"

      msg.send(message)
