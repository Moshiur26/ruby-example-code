sg = Fiber.new do
    s = 0
    loop do
        square = s * s
        s += 1
        s = Fiber.yield(square) || s
    end
end

puts sg.resume
puts sg.resume
puts sg.resume
puts sg.resume
puts sg.resume 40
puts sg.resume
puts sg.resume
puts sg.resume 0
puts sg.resume
puts sg.resume


# Creating hundreds of fibers is a lot
# faster than creating the equivalent threads, especially in Ruby 1.9 and beyond where threads are created at
# the operating system level. There are also significant memory efficiency benefits, too.
# The disadvantage of fibers compared to threads, however, is that fibers are not preemptive at all—you can
# only run one fiber at a time (within a single thread), and you have to do the scheduling. In some situations,
# of course, this might be a plus!