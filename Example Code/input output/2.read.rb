#1
line_count = 0
# File.open("data.txt").each { |line| line_count += line.length }
File.open("data.txt").each { |line| line_count += 1 }
puts "1.line_count: #{line_count}"

#2
line_count = 0
# File.new("data.txt", "r").each { |line| line_count += line.length }
File.new("data.txt", "r").each { |line| line_count += 1 }
puts "2.line_count: #{line_count}"

#3
line_count = 0
# File.open("data.txt").each(',') { |line| line_count += line.length }
File.open("data.txt").each(',') { |line| line_count += 1 }
puts "3.line_count: #{line_count}"

#4
line_count = 0
File.open("data.txt").each_char { |byte| line_count += 1 }
puts "4.line_count: #{line_count}"

#5
line_count = 0
File.open("data.txt") do |f|
    line = f.gets
    line_count += line.length
    puts line    
end
puts "line_count: #{line_count}"

#6
puts "6: "
File.open("data.txt") do |f|
    2.times { puts f.gets }
    end

#7
puts "7: "
File.open("data.txt") do |f|
    2.times { puts f.gets(',') }
end

#8
puts "8: "
line_count = 0
f = File.new("data.txt", "r")
line = f.gets
line_count += line.length
puts line
puts "line_count: #{f.gets.length}"
f.close

#9
puts "9: "
class MyFile
    attr_reader :handle
    def initialize(filename)
        @handle = File.new(filename, "r")
    end
    def finished
        @handle.close
    end
end

f = MyFile.new("data.txt")
puts f.handle.gets
f.finished

#10 There’s also a noniterative version of each_byte called getc :
puts "10: "
File.open("data.txt") do |f|
    2.times { puts f.getc }
end

#11
puts "11: "
text = File.open("data.txt").readlines.join("--")

#12
puts "12: "
File.open("data.txt") do |f|
    puts f.read(11)
end

#13
data = File.read("data.txt")
array_of_lines = File.readlines("data.txt")


#14 Position Within a File
f = File.open("data.txt")
puts f.pos
puts f.gets
puts f.pos

#15
puts "15: "
f = File.open("data.txt")
f.pos = 8
puts f.gets
puts f.pos
