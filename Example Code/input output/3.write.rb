# # w => Write-only. A new file is created (or an old one overwritten as if new).
# File.open("data2.txt", "w") do |f|
#     f.puts "This is a new text"
# end

# #a => Write (in append mode). The file pointer is placed at the end of the file and writes will make
# # the file longer.
# f = File.new("data2.txt", "a")
# f.puts Time.now
# f.close

# #r+ => Both reading and writing are allowed. The file pointer is placed at the start of the file.
# f = File.open("data2.txt", "r+")
# puts f.gets
# f.puts "This is a test-34"
# puts f.gets
# f.close

# #perform the writing equivalents of getc and read with putc and write
# #This example opens text.txt for reading and writing, and changes the first character of the first line to X .
# f = File.open("data2.txt", "r+")
# f.putc "X"
# f.close


# #This example overwrites the first six characters of the first line with 123456 .
# f = File.open("data2.txt", "r+")
# f.write "123456"
# f.close


out_file = File.new("data3.txt", "w")       #if not created then create & if created then overwrite
# out_file = File.new("data3.txt", "a")         #if not created then create & if created then append
out_file.puts("write your stuff here-1.a")
out_file.puts("write your stuff here-2.a")
out_file.close