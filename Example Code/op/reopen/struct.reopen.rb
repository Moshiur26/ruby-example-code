Person = Struct.new(:name, :gender, :age)
fred = Person.new("Fred", "male", 50)
chris = Person.new("Chris", "male", 25)
puts fred.age + chris.age



class Person
    def details
        "#{name} #{age} #{gender}"
    end
end

puts fred.details