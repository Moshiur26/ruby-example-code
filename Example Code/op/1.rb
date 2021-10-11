class Square
    def initialize(side_length)
        @side_length = side_length
    end
    def area
        @side_length * @side_length
    end
end

obj1 = Square.new(5)
obj2 = Square.new(10)

print "obj1: #{obj1.area} obj2: #{obj2.area}\n"
