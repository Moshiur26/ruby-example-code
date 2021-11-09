value1 = 0
value2 = 0

Thread.new do
    10.times do |i|
        value1 += 1
        print i
        $stdout.flush
        Thread.stop
        value2 += 1
    end
end

puts "value1: #{value1} | value2: #{value2}"

Thread.list.each { |thread| thread.run }

puts "value1: #{value1} | value2: #{value2}"
