x = []
x << 1
x.push(2)

puts "#{x}"                 #[1, 2]
puts x.length               #2

puts x.join                 #12
puts x.join(", ")           #[1, 2]
puts x.pop                  #2

arr = "this is._! just test".scan(/\w/)
print arr,"\n"              #["t", "h", "i", "s", "i", "s", "_", "j", "u", "s", "t", "t", "e", "s", "t"]


puts "this is moshiur. test. ruby".split(/\./)          #
puts "this is moshiur. test. ruby".split(/\./).inspect  # ispect used to make array
#["this is moshiur", " test", " ruby"]
puts "Words with lots   of spaces".split(/\s+/).inspect #["Words", "with", "lots", "of", "spaces"]
p "Words with lots   of spaces".split(/\s+/)            #["Words", "with", "lots", "of", "spaces"]

x = [1, 1, 2, 3]
y = ["a", "b"]
y2 = %w{a b} # here y2 is same as y
z = [1, 5, 3]
p x-z

p x+y