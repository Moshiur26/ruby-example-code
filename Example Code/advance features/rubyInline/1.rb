require 'benchmark'
require 'inline'

class Fixnum 
    def factorial
        (1..self).inject { |a, b| a * b}
    end
end

puts 4.factorial

Benchmark.bm do | bm |
    bm.report("Ruby: ") do
        100000.times do 
            8.factorial
        end
    end
end


class CFactorial
    inline do |builder|
        builder.c "
        long factorial(int max) {
            int i=max, result=1;
            while (i >= 2) { result *= i--; }
            return result;
        }"
    end
end
c = CFactorial.new()
puts c.factorial(8)