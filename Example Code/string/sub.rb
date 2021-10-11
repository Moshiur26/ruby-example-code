puts "foobarfoobar".sub('bar', 'foo')           #foofoofoobar
puts "foobarfoobar".gsub('bar', 'foo')          #foofoofoofoo
puts "this is a test".sub(/^../, "hello")       #hellois is a test
puts "this is a test".sub(/..$/, "hello")       #this is a tehello
"this is a test".scan(/../){|x| print "#{x}-"}  #th-is- i-s -a -te-st-
puts()
