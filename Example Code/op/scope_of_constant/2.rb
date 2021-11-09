Pi = 3.141592
class OtherPlanet
    Pi = 4.5
    def self.circumference_of_circle(radius)
        radius * 2 * Pi
    end
end
puts OtherPlanet.circumference_of_circle(10)        #90.0

puts OtherPlanet::Pi        #4.5

puts Pi         #3.141592