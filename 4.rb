class Person

    %w(eat walk sleep work).each  do |method|
        define_method method do
            puts "Person is #{method}ing"
        end
        define_method "#{method}ing" do
            puts "Person is #{method}ing"
        end
    end
end

p = Person.new
p.eat
p.eating
p.walking
p.walk
p.sleep
p.sleeping
p.work
p.working




# Here I applied Dynamic code execution concept
# In upper code we define method dynamically  using define_method
# In line 4 we take 4 word and define them each word into 2 methods 
# like eat,walk,sleep,work all 4 word make eat,eating,walk,walking,sleep,sleeping,work,working methods (total 8)