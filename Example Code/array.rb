x = []
x << 1
x.push(2)

puts x
puts x.length

puts x.join
puts x.join(", ")
puts x.pop

arr = "this is._! just test".scan(/\w/)
print arr,"\n"


puts "this is moshiur. test. ruby".split(/\./)
puts "this is moshiur. test. ruby".split(/\./).inspect # ispect used to make array
puts "Words with lots   of spaces".split(/\s+/).inspect
p "Words with lots   of spaces".split(/\s+/)

x = [1, 1, 2, 3]
y = ["a", "b"]
y2 = %w{a b} # here y2 is same as y
z = [1, 5, 3]
p x-z

p x+y