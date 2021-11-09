#struct is a special class whose only job is to have attributes and to hold data
Person = Struct.new(:name, :gender, :age)
fred = Person.new("Fred", "male", 50)
chris = Person.new("Chris", "male", 25)
chris2 = Person.new("Chris2", "male")
chris3 = Person.new()

puts fred.age + chris.age

puts "chris2.name: #{chris2.name}" 
puts "chris3.name: #{chris3.name}" 

#uper code is equivalent to this longhand method

class Person
    attr_accessor :name, :gender, :age
    def initialize(name, gender, age)
        @name = name
        @gender = gender
        @age = age
    end
    def initialize(name, gender)
        @name = name
        @gender = gender
    end
    def initialize(name)
        @name = name
    end
    def initialize
    end
end

#this code is not exactly equivalent to the struct code (though pragmatically it’s close enough), 
#because parameters are optional when initializing a Struct class, whereas the preceding Person class
#code requires the three parameters ( name , gender , and age ) be present
