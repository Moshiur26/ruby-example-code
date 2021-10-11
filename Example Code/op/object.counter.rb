#@@number_of_person here @@ use for static variable
#def self.count here self use for static method
class Square 
    def initialize
        if defined?(@@number_of_squares)
            @@number_of_squares += 1
        else
            @@number_of_squares = 1
        end
    end
    def self.count
        @@number_of_squares
    end
end

obj1 = Square.new
puts Square.count

obj2 = Square.new
puts Square.count

obj3 = Square.new
puts Square.count