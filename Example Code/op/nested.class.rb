class Drawing
    class Line
    end
    class Circle
    end
end

class Drawing
    def self.give_me_a_circle
        Circle.new
        end

    class Line
    end

    class Circle
        def what_am_i
        "This is a circle"
        end
    end
end

a = Drawing.give_me_a_circle
puts a.what_am_i
a = Drawing::Circle.new
puts a.what_am_i

#Circle class is not directly accessable
# a = Circle.new
# puts a.what_am_i