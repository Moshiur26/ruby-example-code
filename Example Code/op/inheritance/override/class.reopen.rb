#reopening a class lets you add new methods or change old ones without losing anything

class Dog
    def talk
        puts "Woof"
    end
    def color
        puts "Black"
    end
end

dog1 = Dog.new
dog1.talk
# puts dog1.methods.join(' ')

class Dog
    def talk
        puts "Howl"
    end
end

dog2 = Dog.new
dog2.talk
dog2.color

puts dog2.methods.join(' ')