# while x = gets
#     puts "=> #{eval(x)}"
# end

x = "Hello, world!"
puts x.tainted?
y = [x, x, x]
puts y.tainted?
z = 20 + 50
puts z.tainted?
a = File.open("data.txt").readlines.first
puts a.tainted?
b = [a]
puts b.tainted?

#here’s an extremely safe version of our Ruby interpreter

# while x = gets
#     next if x.tainted?
#     puts "=> #{eval(x)}"
# end