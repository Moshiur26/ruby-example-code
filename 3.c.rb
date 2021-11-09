def is_urls(str)
    return !str.scan(/^(http(s)?:\/\/)?(\w+\.)+\w+(\/.+)*[\/'']*/).empty?
end

puts is_urls("http://fdsf.com/./com")
# puts is_urls("https://fdsf.com")
# puts is_urls("https://rubular.com/index.php")
puts is_urls("https://rubular.com/index.php.")