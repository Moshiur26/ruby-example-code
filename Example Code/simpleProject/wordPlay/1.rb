class String
    def sentences
        gsub(/\n|\r/, ' ').split(/\.s*/)
    end
    def words
        # scan(/\w+/)
        scan(/\w[\w\'\-]*/)
    end
end

class WordPlay
    
end

p %q{Hello. This is a test of
basic sentence splitting. It
even works over multiple lines.}.sentences

p "This is a test-1 and test_2 of words' capabilities".words

hot_words = %w{test ruby great}
my_string = "This is a test. Dull sentence here. Ruby is great. So is cake."

t = my_string.sentences.find_all do |s|
    s.downcase.words.any? { |w| hot_words.include?(w)}
end

p t.to_a