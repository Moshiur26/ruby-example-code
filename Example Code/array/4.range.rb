x = ('A'..'Z').to_a     #convert a range into an array
print x.join(" "), "\n"

('A'..'Z').to_a.each{   #convert a range into an array
    |letter|
    print letter, " "
}
puts()

('A'..'Z').each{        #range class have each method
    |letter|
    print letter, " "
}
puts
puts(('A'..'Z').include?('E'))

a = [2, 4, 6, 8, 10, 12, 14, 16]
p a[1..3]

a[1..2] = ["a", "b", "c"]
p a                     #[2, "a", "b", "c", 8, 10, 12, 14, 16]