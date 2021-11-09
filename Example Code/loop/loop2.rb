print "times"
3.times { 
    |i|
    print i, ".hello "
    print "world. "

}
#times0.hello world. 1.hello world. 2.hello world.

print "\n upto"
3.upto(6) { 
    |i|
    print i, ".hello "
    print "world. "

}
#upto3.hello world. 4.hello world. 5.hello world. 6.hello world. 

print "\n downto: "
10.downto(7) { 
    |i|
    print i, ".hello "
    print "world. "

}
#downto: 10.hello world. 9.hello world. 8.hello world. 7.hello world.

print "\n step: "
0.step(30, 10) { 
    |i|
    print i, ".hello "
    print "world. "

}
#step: 0.hello world. 10.hello world. 20.hello world. 30.hello world. 

print "\n collect: "

arr = [1, 2, 4, 5].collect{
    |i|
    i += 10
    i+10
}
print arr, "\n"                     #collect: [21, 22, 24, 25]

arr = [1, 2, 4, 5].select{
    |i|
    i > 4
}
print "select: ", arr, "\n"         #select: [5]

arr = [1, 2, 4, 5].reject{
    |i|
    i > 4
}
print "reject: ", arr, "\n"         #reject: [1, 2, 4]