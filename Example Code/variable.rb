# $a -> represent global variable
# @a -> represent instance/object variable
# @@a -> represent class variable
# a -> represent local variable
# A -> constant variable

$global = 10
class Square
    def initialize
        @length = 20 
        if defined?(@@number_of_squares)
            @@number_of_squares += 1
        else
            @@number_of_squares = 1
        end
    end
    def self.count
        @@number_of_squares
    end
    def print
        puts $global
    end

end
    a = Square.new
    b = Square.new
    puts Square.count