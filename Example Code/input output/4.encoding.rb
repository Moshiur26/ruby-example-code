#
File.new("data2.txt", "r:utf-8").each { |line| puts line }
p File.open("data2.txt", "r:iso-8859-1").external_encoding
p File.open("data2.txt", "r").external_encoding

#
File.open("data2.txt", "r:utf-8:iso-8859-1") do |f|
    p f.external_encoding
    first_line = f.gets
    p first_line.encoding
end

