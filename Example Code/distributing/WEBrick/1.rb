require 'webrick'

server = WEBrick::GenericServer.new( :Port => 1234 )

trap("INT"){ server.shutdown }

server.start do |socket|
    socket.puts "TIme: #{Time.now}"
end

#Caution Because your test program doesn’t output valid HTTP, it might fail with some particularly sensitive web browsers.