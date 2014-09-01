# Description:
#   LGTM image from http://www.lgtm.in/.
#
# Dependencies:
#   "request": "~2.27.0"
#   "cheerio": "~0.12.1"
#
# Commands:
#   hubot lgtm - Random LGTM image URL.
#
# Author:
#   saihoooooooo

request = require 'request'
cheerio = require 'cheerio'

module.exports = (robot) ->
  robot.respond /LGTM/i, (msg) ->
    url = 'http://www.lgtm.in/g'
    request url, (error, response, body) ->
        if error or response.statusCode != 200
          msg.send 'ERROR: 通信に失敗しちゃった……'
        else
          $ = cheerio.load body
          msg.send $('#imageUrl').val()
