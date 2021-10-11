class Parent
    def m1
        puts "this is  m1 in the parent class"
    end
    
    def m2
        puts "this is  m2 in the parent class"
    end
end

class Child < Parent
    def m2
        puts "this is m2 in child class"
    end

end

obj = Child.new
obj.m1
obj.m2

