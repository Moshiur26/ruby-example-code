#!/usr/bin/env ruby

require 'cgi'

cgi = CGI.new

from = cgi['from'].to_i
to = cgi['to'].to_i
number = rand(to-from+1) + from
puts cgi.header
puts "<html><body>from: #{from} to: #{to} number: #{number}</body></html>"

#command for run: ./test3_cgi.cgi from=2 to=40