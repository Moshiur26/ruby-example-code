class Pet
    attr_accessor :name, :age, :gender, :color
end

class Dog < Pet
    def bark(i)
        i.times do
            puts "Woof!"
        end
    end
    def say(a, b, c)
        print a+" "+b+" "+c+"\n"
    end
end

dog = Dog.new
dog.name = "Tomy"
dog.age = 5
dog.gender = "Male"
dog.color = "Black"

dog.bark(2)
dog.say("Dogs", "can't", "talk")

class Cat < Pet
end

cat = Cat.new
cat.name = "Meuw"
cat.age = 5
cat.gender = "Male"
cat.color = "Black"

class Snake < Pet
    attr_accessor :length
end

snake = Snake.new
snake.name = "Snake"
snake.age = 5
snake.gender = "Male"
snake.color = "Black"
snake.length = ".8m"

print snake.name