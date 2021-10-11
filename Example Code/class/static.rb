#@@number_of_person here @@ use for static variable
#def self.count here self use for static method
class Person
    def initialize
        if defined?(@@number_of_person)
            @@number_of_person += 1
        else
            @@number_of_person = 1
        end
    end
    def self.count
        @@number_of_person
    end
end

obj1 = Person.new
puts Person.count

obj2 = Person.new
puts Person.count

obj3 = Person.new
puts Person.count