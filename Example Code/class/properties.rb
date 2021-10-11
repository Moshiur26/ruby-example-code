# # puts obj.methods.join('@#@')
class A
    attr_accessor :x, :y
    def initialize
        
      end
    # def initialize(*args)
    #   @x, @y = args
    # end
  
    def attrs
      instance_variables.map{|ivar| instance_variable_get ivar}
    end
end

# a = A.new(5,10)
# puts "#attrs: #{a.attrs.join('-')}"
# puts "#instance_variables: #{a.instance_variables.join('-')}"
# puts "#methods: #{a.methods.join('-')}"

b = A.new
puts "#attrs: #{b.attrs.join('-')}"
puts "#instance_variables: #{b.instance_variables.join('-')}"
puts "#methods: #{b.methods.join('-')}"

# puts "Person: "
# Person = Struct.new(:name)
# obj = Person.new("KK")
# puts "#instance_variables: #{obj.instance_variables.join('-')}"
# puts "#methods: #{obj.methods.join('-')}"
# puts "#instance_methods: #{Person.instance_methods.join('-')}"
