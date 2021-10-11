#we can make our own class, implement an each method, and get these methods for “free”:
class AllVowels
    VOWELS = %w{a e i o u}
    def each
        VOWELS.each { |v| yield v }
    end
end

x = AllVowels.new
x.each { |v| puts v }
# print "#{x.collect{ |v| v+"X" }}"     it's not possible because not include enumrable#

class AllVowels2
    include Enumerable
        VOWELS = %w{a e i o u}
    def each
        VOWELS.each { |v| yield v }
    end
end

x = AllVowels2.new
print "#{x.collect{ |v| v+"X" }}\n"
print "#{x.detect{ |v| v >'o' }}\n"
