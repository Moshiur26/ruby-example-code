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
    def self.best_sentence(sentences, desired_words) 
        ranked_sentences = sentences.sort_by do |s|
            s.words.length - (s.downcase.words - desired_words).length
        end
        ranked_sentences.last
    end
    def self.switch_pronouns(text)
        text.gsub(/\b(I am|You are|I|You|Me|Your|My)\b/i) do |pronoun|
            case pronoun.downcase
                when "i"
                    "you"
                when "you"
                    "me"
                when "me"
                    "you"
                when "i am"
                    "you are"
                when "you are"
                    "i am"
                when "your"
                    "my"
                when "my"
                    "your"
            end
        end.sub(/^me\b/i, 'i')
    end
end

# p %q{Hello. This is a test of
# basic sentence splitting. It
# even works over multiple lines.}.sentences

# p "This is a test-1 and test_2 of words' capabilities".words

hot_words = %w{test ruby great}
my_string = "This is a test. Dull sentence here. Ruby is great. So is cake."

# t = my_string.sentences.find_all do |s|
#     s.downcase.words.any? { |w| hot_words.include?(w)}
# end

# p t.to_a

# puts WordPlay.best_sentence(my_string.sentences, hot_words)
# puts WordPlay.switch_pronouns('Your cat is fighting with my cat')
# puts WordPlay.switch_pronouns('You gave me hope')



# while input = gets
#     puts '>> ' + WordPlay.switch_pronouns(input).chomp + '?'
# end