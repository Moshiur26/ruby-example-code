10.times { Thread.new { 10.times { |i| print i; $stdout.flush; sleep rand(2) } } } 
Thread.list.each { |thread| thread.join unless thread == Thread.main }

# However, keeping your own list of threads is essential if you’re likely to have more than one group of
# threads working within an application and you want to keep them separate from one another when it comes
# to using join or other features.
# The list of threads also includes the main thread representing the main program’s thread of execution,
# which is why we explicitly do not join it in the prior code.