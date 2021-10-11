val = 10
arr = [3, 10, 18, 100, 200]
for i in 0..4 do
    if i == 4
        print "array in ", i+1, " position\n"
    end
    if arr[i] == 10
        print "value->", arr[i], " is equal 10\n"
    elsif arr[i] >= 10 and arr[i] <= 100
        print "value->", arr[i], " is in 10 to 100\n"
    else
        print "value->", arr[i], " is less then 10 or greater then 100\n"
    end
end

# x <=> y retur 0 if x==y, 1 if x>y, -1 if x<y 

x = []

puts "x is empty" if x.empty?

x = [1, 2, 3, "x"]

p x.include?("x")
p x.include?(3)
p x.include?(4)
print x.first, " ", x.last, "\n"

p x.first(2).join("-")