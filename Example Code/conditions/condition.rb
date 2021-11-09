val = 10
arr = [3, 10, 18, 100, 200]
for i in 0..4 do
    print "#{i}."
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

# output:
# 0.value->3 is less then 10 or greater then 100
# 1.value->10 is equal 10
# 2.value->18 is in 10 to 100
# 3.value->100 is in 10 to 100
# 4.array in 5 position
# value->200 is less then 10 or greater then 100

x = []

puts "x is empty" if x.empty?   #x is empty

x = [1, 2, 3, "x"]

p x.include?("x")               #true
p x.include?(3)                 #true
p x.include?(4)                 #false
print x.first, " ", x.last, "\n"        #1 x

p x.first(2).join("-")          #"1-2"