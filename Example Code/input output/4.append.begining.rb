newfile = File.new("data_temp.txt","w")
newfile.puts "This line should appear at the top of each file"

# oldfile = File.open("test", "r+")
# oldfile.each_line { |line| newfile.puts line}
# oldfile.close();

newfile.puts(File.read("data4.txt"))

File.delete("data4.txt");
File.rename("data_temp.txt", "data4.txt");