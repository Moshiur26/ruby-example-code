if ARGV.length == 0
    puts "Please give us a text file in command!!"
    exit
end
lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join
word_count = text.split.length
character_count = text.length
character_count_nospaces = text.gsub(/\s+/, '').length
paragraph_count = text.split(/\n\n/).length
sentence_count = text.split(/\.|\?|!/).length

puts "#{line_count} lines"
puts "#{character_count} characters"
puts "#{character_count_nospaces} characters excluding spaces"
puts "#{word_count} words"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count} sentences"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"

stopwords = %w{the a by on for of are with just but and to the my I has some in}

words = text.scan(/\w+/)
keywords = words.select{ |w| !stopwords.include?(w) }
#keywords = words.reject{ |w| stopwords.include?(w) }
puts "#{words.length} words #{keywords.length} keywords"

good_percentage = ((keywords.length.to_f / words.length.to_f) * 100).to_i
puts "#{good_percentage}% of words are non-fluff words"