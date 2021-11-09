[1, "test", 2, 3, 4].each { |element| print element.to_s + "X-" }   #1X-testX-2X-3X-4X-
puts


arr = [1, 2, 3, 4].collect { |element| element * 2 }                
puts "#{arr}"                                                       #[2, 4, 6, 8]

value = [1, 2, 3, 4].detect { |element| element>2 }                
puts "detect: #{value}"                                                       #detect: 3

arr = [1, 2, 3, 4].reject { |element| element>2 }                
puts "reject: #{arr}"                                                       #reject: [1, 2]

arr = [1, 2, 3, 4].select { |element| element>2 }                
puts "#{arr}"                                                       #[3, 4]


arr = [1, 2, 3, 4].select do |element| 
    if element > 2
        true
    else
        false
    end 
end                
puts "#{arr}"                                                       #[3, 4]

x = [1, 2, 3]
y = ["a", "b", "c"]
z = x + y
p z                 #[1, 2, 3, "a", "b", "c"]


x = [1, 2, 3, 4, 5]
y = [1, 2, 3]
z = x - y
p z                 #[4, 5]


x = []
puts "x is empty" if x.empty?   #x is empty

x = [1, 2, 3]
p x.include?("x")       #false
p x.include?(3)         #true

x = [1, 2, 3]           
puts x.first            #1
puts x.last             #3

x = [1, 2, 3]
puts x.first(2).join("-")       #1-2

x = [1, 2, 3]
p x.reverse             #[3, 2, 1]