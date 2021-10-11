text = ''
line_count = 0
File.open("data2.txt").each { |line| 
    line_count += 1
    text << line
 }
char_count = text.length
print("line_count: #{line_count}, Char count: #{char_count}\n")


lines =File.readlines("data2.txt")
text = lines.join
line_count = lines.length
char_count = text.length

print("line_count: #{line_count}, Char count: #{char_count}\n")


total_char_withoutspace = text.gsub(/\s+/, '').length
number_of_word = text.scan(/\w+/).length


paragraph_count = text.split(/\n\n/).length
number_of_sentencu = text.split(/\.|\?|!/).length
print "total_char_withoutspace: #{total_char_withoutspace}, number_of_word: #{number_of_word}\n"
puts "#{paragraph_count} paragraphs"
puts "#{number_of_sentencu} sentences"
puts "#{number_of_sentencu / paragraph_count} sentences per paragraph (average)"
puts "#{number_of_word / number_of_sentencu} words per sentence (average)"
