text = %q{
This is a test of
paragraph one.

This is a test of
paragraph two.

This is a test of
paragraph three.
}
puts text.split(/\n\n/).length              #3

print "#{"this is moshiur. test. ruby".split(/\./).join('-')}\n"          #this is moshiur- test- ruby
puts "this is moshiur. test. ruby".split(/\./).inspect      #["this is moshiur", " test", " ruby"] # ispect used to make array
puts "Words with lots   of spaces".split(/\s+/).inspect     #["Words", "with", "lots", "of", "spaces"]
p "Words with lots   of spaces".split(/\s+/)                #["Words", "with", "lots", "of", "spaces"]
