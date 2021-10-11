class Person
    attr_accessor :name, :age, :gender
end

obj = Person.new

obj.name = "Moshiur"
obj.age = 25
obj.gender = "Male"

puts obj.name
puts obj.age
puts obj.gender