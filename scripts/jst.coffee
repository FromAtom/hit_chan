# Description:
#   Display JST(Japan Standard Time)
#
# Dependencies:
#   "request"
#   "cheerio"
#
# Commands:
#   hubot 京都|日本
#
# Author:
#   FromAtom

request = require 'request'
cheerio = require 'cheerio'

module.exports = (robot) ->
  robot.respond /(日本|にほん|ニホン|京都|きょうと|kyoto|japan)/i, (msg) ->
    url = "http://www.time-j.net/WorldTime/Country/JP"
    options =
      url: url
      timeout: 2000
      headers: {'user-agent': 'node title fetcher'}

    request options, (error, response, body) ->
      $ = cheerio.load body
      string = $('#currentTime').text()

      message = "京都は今 #{string} です。"

      msg.send(message)
