3.times {
    print "hello "
}
print "\n"

i = 1
1.upto(3) {
    print i,". upto "
    i += 1
}
print "\n"

i = 10
10.downto(7) {
    print i,". downto "
    i -= 1
}
print "\n"

i = 1
0.step(50, 10) {
    print i,". step "
    i += 10
}
print "\n each: "

[1, 2, "hello", 4, 5].each{|i| print i.to_s+" "}
print "\n collect: "

arr = [1, 2, 4, 5].collect{|i|  i+10}
print arr, "\n"