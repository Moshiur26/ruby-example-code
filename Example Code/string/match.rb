puts "String has vowels" if "This is a test".match(/[aeiou]/)       #String has vowels

x = "This is a test".match(/(\w+) (\w+) (\w+)/)
puts x[0]               #This is a
puts x[1]               #This
puts x[2]                #is
puts x[3]                #a
