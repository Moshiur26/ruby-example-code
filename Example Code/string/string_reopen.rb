class String
    def is_valid_as_password
        # puts self.scan(/\w/)
        # self.scan(/\D/).empty?
        # puts self.scan(/\D/)
        # puts self.scan(/[0-9]/)
        # puts self.scan(/[a-z]/)
        # puts self.gsub!(/[0-9A-Za-z]/, '')
        # puts self.gsub(/[0-9A-Za-z]/, '')
        # puts self.gsub(/[0-9A-Za-z]/, '').length>0
        !self.scan(/[A-Z]/).empty? & !self.scan(/[a-z]/).empty? & !self.scan(/[0-9]/).empty? & !self.gsub(/[0-9A-Za-z]/, '').empty? & (self.length>=8)
    end
end

puts "Hello!33".is_valid_as_password