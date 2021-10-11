current_situation = :good       #is efficient
puts "Everything is fine" if current_situation == :good
puts "PANIC!" if current_situation == :bad

current_situation = "good"      #isn’t as efficient
puts "Everything is fine" if current_situation == "good"
puts "PANIC!" if current_situation == "bad"

#This technique can also be useful when there’s a specification or consistency in which key names to use
person1 = { :name => "Fred", :age => 20, :gender => :male }
person2 = { :name => "Laura", :age => 23, :gender => :female }
