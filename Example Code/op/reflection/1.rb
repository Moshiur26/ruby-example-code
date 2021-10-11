#Reflection and Discovering an Object’s Methods
#Reflection is the process by which a computer program can inspect, analyze, and modify itself while it’s
#running and being used. Ruby takes reflection to an extreme and allows you to change the functionality of
#great swathes of the language itself while running your own code.

class Person
    attr_accessor :name, :age
end

p = Person.new
p.name = "Fred"
p.age = 20
puts p.instance_variables

puts ("##################")

a = "This is a test"
puts a.methods.join(' ')