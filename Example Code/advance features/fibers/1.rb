sg = Fiber.new do
    s = 0
    loop do
        square = s * s
        Fiber.yield square
        s += 1
    end
end
10.times { puts sg.resume }

# Whereas threads will typically run continually, fibers hand over control once they have performed certain tasks. 
# Unlike regular methods,however, once a fiber hands over control, it continues to exist and can be resumed at will.
# In short, fibers are pragmatically similar to threads, but fibers aren’t scheduled to all run together. You
# have to manually control the scheduling.