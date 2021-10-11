# require_relative 'a'
load 'a.rb'
puts "Hello from b.rb"

# require_relative 'a'
load 'a.rb'
puts "Hello again from b.rb"

#With load , the code is loaded and reprocessed anew each time you use the load method. require and
#require_relative , on the other hand, process external files only once.