def is_consequent_number(str)

    return !str.scan(/\d\d\d\d\d/).empty?
end

puts is_consequent_number("012d3453")
