def is_valid_as_email(str)
    return !str.scan(/\w+\@(\w+.)*\w+\.\w+$/).empty?
end

puts is_valid_as_email("moshiurrahmanb11@gmail.com")
# puts is_valid_as_email("moshiurrahmanb11@gmail.v")
# puts is_valid_as_email("moshiurrahmanb11@gmail.v.")
# puts is_valid_as_email("moshiurrahmanb11@gmail")
# puts is_valid_as_email("moshiurrahmanb11@")
