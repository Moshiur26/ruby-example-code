#struct is a special class whose only job is to have attributes and to hold data
Person = Struct.new(:name, :gender, :age)
fred = Person.new("Fred", "male", 50)
chris = Person.new("Chris", "male", 25)
puts fred.age + chris.age


#uper code is equivalent to this longhand method

class Person
    attr_accessor :name, :gender, :age
    def initialize(name, gender, age)
        @name = name
        @gender = gender
        @age = age
    end
end

#this code is not exactly equivalent to the struct code (though pragmatically it’s close enough), 
#because parameters are optional when initializing a Struct class, whereas the preceding Person class
#code requires the three parameters ( name , gender , and age ) be present
