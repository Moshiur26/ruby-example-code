class Person
    def initialize(name)
        @name = name
    end
    def name
        return @name + " Rahman"
    end
end

class Doctor < Person
    def name
        "Dr. " + super  #super will call parent's name method |it's also called DRY meaning Don’t Repeat Yourself
    end
end

obj = Person.new("Moshiur")
puts(obj.name)

obj2 = Doctor.new("Moshiur")
puts(obj2.name)
