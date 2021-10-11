#Ruby blocks are little anonymous functions that can be passed into methods.
#Blocks are enclosed in a do / end or {}, and they can have multiple arguments.
#The argument names are defined between two pipe | characters.

[1 , 2, 3].each { |i| print "#{i} "}
puts()

#yield keyword -> the code inside the block will run & do its work.

def print_once 
    yield
end

print_once{ puts "print_once call by yild"}

def print_twice
    yield
    yield
end

print_twice { puts "print_twice call by yild"}

#can pass any number of arguments to yield
def one_two_three
    yield 1
    yield 2
    yield 3
  end
  
one_two_three { |number| print "#{number * 10} " }
puts()
