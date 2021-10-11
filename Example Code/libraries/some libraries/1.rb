require 'ostruct'
person = OpenStruct.new
person.name = "Fred Bloggs"
person.age = 25
puts "person.age #{person.age}"


#terminal command

#gem list
#gem list --remote

#gem install chronic
# gem install -v 0.10.2 chronic

#gem update
#get uninstall feedtools

require 'chronic'

puts Chronic.parse("may 10th")
puts Chronic.parse("10th may")
puts Chronic.parse("10 may")


#Bundler developed to help you manage the dependencies of a project (essentially, the libraries upon which your project depends)
#Bundler lets you create a file (called Gemfile ) within a project's directory that specifies what libraries the project depends on.