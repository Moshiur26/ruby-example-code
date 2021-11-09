puts "#{"hEllo".scan(/[^a-z]/)}"    #["E"]
puts "#{"hEllo_1".scan(/[^0-9]/)}"    #["h", "E", "l", "l", "o", "_"]
puts "#{"hEllo_2".scan(/[0-9]$/)}"    #2
puts "#{"hEllo_".scan(/[^0-9]$/)}"    #2
