def function
    puts "Enter a multi line response ending with a tab:"
    input = "" 

    input += gets("\t\n").chomp

    out_file = File.new("data.txt", "w")
    out_file.puts(input)
    out_file.close

    puts "output: "
    File.open("data.txt").each { |line| puts line }
end

function