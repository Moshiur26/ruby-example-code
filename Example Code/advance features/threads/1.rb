threads = []
value1 = 0
value2 = 0

10.times do
    thread = Thread.new do
        value1 += 1
        10.times { |i| print i; $stdout.flush; sleep rand(2) }
        value2 += 1
    end
    threads << thread
end
puts "value1: #{value1} | value2: #{value2}"

# threads.each { |thread| thread.join }
threads.each do |thread|
    puts "Thread #{thread.object_id} didn't finish in 1s" unless thread.join(1)
    # puts "Thread #{thread.object_id} didn't finish in 1s" unless thread.join(1)
end


puts "value1: #{value1} | value2: #{value2}"


#we create an array to hold your Thread objects so that we can easily keep track of them. Then we
# create ten threads, sending the block of code to be executed in each thread to Thread.new , and add each
# generated thread to the array.


# Once we have created the threads, we wait for all of them to complete before the program finishes. we
# wait by looping through all the thread objects in threads and calling each thread’s join method. The join
# method makes the main program wait until a thread’s execution is complete before continuing. In this way,
# we make sure all the threads are complete before exiting.

#thread.join(2) means wait 2 second to finished this thread.If the thread doesn’t finish within that time, join returns nil.
#thread.join() means wait until thread is finished

# Note: When we create a thread, it can access any variables that are within scope at that point. However,
# any local variables that are then created within the thread are entirely local to that thread. This is similar to the
# behavior of other types of code blocks.