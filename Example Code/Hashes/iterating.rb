d = { 'a'=>1,'b'=>2, 'c'=>30, 'd'=>4}
print d, "\n"

d.each {|key, value| puts "key=#{key} value=#{value}"}

d.delete_if {|key, value| value>10}


print "After Delation: d = ", d, "\n"