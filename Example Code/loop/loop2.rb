print "times"
3.times { 
    |i|
    print i, ".hello "
    print "world. "

}

print "\n upto"

3.upto(6) { 
    |i|
    print i, ".hello "
    print "world. "

}
print "\n downto: "

10.downto(7) { 
    |i|
    print i, ".hello "
    print "world. "

}

print "\n step: "

0.step(30, 10) { 
    |i|
    print i, ".hello "
    print "world. "

}

print "\n collect: "

arr = [1, 2, 4, 5].collect{
    |i|
    i += 10
    i+10
}
print arr, "\n"

arr = [1, 2, 4, 5].select{
    |i|
    i > 4
}
print "select: ", arr, "\n"

arr = [1, 2, 4, 5].reject{
    |i|
    i > 4
}
print "reject: ", arr, "\n"