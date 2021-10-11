#Handling Exceptions
begin
    puts 10/0

rescue
    puts "You caused an error!"
end


data = ""
begin
    require 'net/http'
    url = URI.parse('http://www.rubyinside.com3/')
    response = Net::HTTP.start(url.host, url.port) do |http|
        http.get(url.path)
    end
    content = response.body
    data = content
rescue ZeroDivisionError
    puts "Get ZeroDivisionError"

rescue RuntimeError
    puts "Get RuntimeError"

rescue SocketError
    puts "The Web page could not be loaded! Using default data instead."
    data = "<..load data from local file..>"
end

# puts data