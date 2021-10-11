"this is a! .test".scan(/\w\w\w/){|x| print "#{x} "}
print "\n"
"this is a! .te,st".scan(/\w+/){|x| print "#{x} "}
print "\n"
puts "this is! ! a. test".scan(/\w/).join

text = "First-class decisions require clear-headed thinking."
puts "Scan method: #{text.scan(/\w+/).length} |output: #{text.scan(/\w+/)}"
puts "Split method: #{text.split.length} |output: #{text.split}"       #split by space(single+multiple)/new line

puts "this is?! ! a. test".split(/\.|\?|\!/).join("|")