def split_into_two_array(arr)
    odd_arr = arr.select{|element| element % 2 == 1}
    even_arr = arr.select{|element| element % 2 == 0}
    return {:odd_arr => odd_arr, :even_arr => even_arr}
end

def print_odd_array_and_even_array(hash)
    puts "odd array: #{hash[:odd_arr]}"
    puts "even array: #{hash[:even_arr]}"
end

arr = [1,2,3,4,5,6,7]

print_odd_array_and_even_array( split_into_two_array( arr ) )