#Modules solve providing namespaces that can contain any number of classes, methods, and constants, and allow to address them directly

module LetterStuff
    def self.random
        (rand(26) + 65).chr
    end    
end

module NumberStuff
    def self.random
        rand(10000)
    end    
end    

puts LetterStuff.random

