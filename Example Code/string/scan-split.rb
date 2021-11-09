"this is a! .test".scan(/\w\w\w/){|x| print "#{x}-"}    #thi-tes-
print "\n"
"this is a! .test".scan(/./){|x| print "#{x}-"}         #t-h-i-s- -i-s- -a-!- -.-t-e-s-t-
print "\n"
"this is a! .te,st".scan(/\w+/){|x| print "#{x}-"}      #this-is-a-te-st-
print "\n"
puts "this is! ! a. test".scan(/\w/).join               #thisisatest

text = "First-class decisions require clear-headed thinking."

puts "length: #{text.scan(/\w+/).length} |output: #{text.scan(/\w+/)}"  
#length: 7 |output: ["First", "class", "decisions", "require", "clear", "headed", "thinking"]

"The car costs $1000 and the cat costs $10".scan(/\d+/) do |x|          #1000-10-
    print "#{x}-"
end
puts
puts "Split method: #{text.split.length} |output: #{text.split}"       #split by space(single+multiple)/new line

puts "this is?! ! a. test".split(/\.|\?|\!/).join("|")