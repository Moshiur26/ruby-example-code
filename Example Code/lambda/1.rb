#A lambda is a way to define a block & its parameters with some special syntax.
#we can save this lambda into a variable for later use.

say_something = -> { puts "This is a lambda" }
say_something2 = lambda { puts "This is a lambda2" }

say_something.call
say_something2.call

#the ways to call a lambda
my_lambda = -> { puts "Lambda called" }

my_lambda.call
my_lambda.()
my_lambda[]
my_lambda.===

#Lambdas can also take arguments
times_two = ->(x) { x * 2 }
times_two2 = lambda { |x| x * 2 }
print "#{times_two.call(10)} #{times_two2.call(10)}\n"

# can also use default arguments with a Ruby lambda:
times_two = ->(x = 5) { x * 2 }
print "#{times_two.call} #{times_two.call(10)}\n"
