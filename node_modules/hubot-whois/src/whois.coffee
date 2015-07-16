# Description
#   A hubot script that tells you more information about a domain name.
#
# Configuration:
#
# Commands:
#   hubot whois google.com - <what the respond trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   robksawyer[@<org>]

whois = require('node-whois')

module.exports = (robot) ->

  #
  # Check a domain name on namecheap
  #
  robot.respond /whois (.*)/i, (msg) ->

    whois.lookup msg.match[1], (err, data) ->
      if err 
        msg.send err
      msg.send data