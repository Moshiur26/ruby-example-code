puts "hello everyone".length        #14
puts "hello everyone".capitalize    #Hello everyone
puts "hello everyone".upcase        #HELLO EVERYONE
puts "hello everyone".downcase      #hello everyone
puts "hello everyone".chop          #hello everyon
puts "hello everyone".next          #hello everyonf
puts "hello everyone".reverse       #enoyreve olleh
puts "hello everyone".sum           #1441
puts "Hello Everyone".swapcase      #hELLO eVERYONE
puts "hello everyone".reverse       #enoyreve olleh
puts "hello everyoNe".swapcase.reverse  #EnOYREVE OLLEH

puts "#############"

str = %q{this is a
    test of multiline
    capabilities
}
puts str

str = %q!this is a
    test of multiline
    capabilities
!
puts str

puts "ab"*2         #abab
puts "x">"y"        #false
puts "a".ord        #97
puts 97.chr         #a
x = 20
y= 30
puts "x = #{x} , x+y = #{x+y}"          #x = 20 , x+y = 50
puts "3 times good = #{"good "*3}"      #3 times good = good good good
x = 10
puts x.to_s+" is a number"                      #10 is a number


puts "String has vowels" if "This is a test" =~ /[aeiou]/
puts "This1 is a test" =~ /[0-9]/           #4
puts "String have digits" if "This is a test" =~ /[0-9]/    #this will not provide any output

puts "<#>" if 0       #<#>