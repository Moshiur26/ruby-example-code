#lambda functions provide give flexibility. can pass a lambda to a function

double_it = -> (x) {x*2}
triple_it = -> (x) {x*3}

def apply_lembda(lambda, num)
    puts (lambda.call(num))
end

apply_lembda(double_it, 10)
apply_lembda(triple_it, 10)

#possible to create an array of lambdas to execute in a pipeline:
d_it = -> (x) {x*2}
t_it = -> (x) {x*3}
h_it = -> (x) {x/2}

lambda_pipline = [d_it, t_it, h_it]
num = 5
lambda_pipline.each do |lmd|
    num = lmd.call(num)
end

puts "num = #{num}"
