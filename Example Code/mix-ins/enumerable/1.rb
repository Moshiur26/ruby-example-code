#Enumeration refers to traversing over objects. In Ruby, we call an object enumerable
# when it describes a set of items and a method to loop over each of them

#Array class (for one) has pre-included the methods provided by the Enumerable module ,
#a module that supplies about 20 useful countingand iteration-related methods, including collect , detect ,
#find , find_all , include? , max , min , select , sort ,and to_a . All of these use Array ’s each method to do their
#jobs, and if your class can implement an each method, you can include Enumerable , and get all those
#methods for free in your own class!

my_array = %w{this is a test of the longest word check}
longest_word = ''
my_array.each do |word|
    longest_word = word if longest_word.length < word.length
end
puts longest_word

#some examples of the methods provided by Enumerable

print "#{[1,2,3,4].collect { |i| i.to_s + "x" }}\n"
print "#{[1,2,3,4].detect { |i| i.between?(2,4) }}\n"
print "#{[1,2,3,4].select { |i| i.between?(2,4) }}\n"
print "#{[1,2,3,4].sort}\n"
print "#{[1,2,3,4].max}\n"
print "#{[1,2,3,4].min}\n"
