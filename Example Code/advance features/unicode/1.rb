puts "this is a test".encoding
puts "ça va?".encoding
puts "ça va?".encode("ISO-8859-1")
# puts "ça va?".encode("US-ASCII")      #encode': U+00E7 from UTF-8 to US-ASCII (Encoding::UndefinedConversionError)