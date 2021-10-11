def each_vowel(&code_block)
    %w{a e i o u}.each{|vowel| code_block.call(vowel)}
end

print "vowels 1: "
each_vowel{|vowel| print vowel, " "}

puts()

def each_vowel2
    #yield method automatically detects any passed code block and passes control to it (page 61)
    %w{a e i o u}.each {|vowel| yield vowel} 
end


print "vowels 2: "
each_vowel2{|vowel| print vowel, " "}

puts()
