2.times { Thread.new { 10.times { |i| print i; $stdout.flush; Thread.pass } } } 
puts ">#"
Thread.list.each { |thread| thread.join unless thread == Thread.main }
puts "<#"
