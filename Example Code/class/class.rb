# class Person
#     def initialize(name)
#         @name = name
#     end
#     def name
#         @name
#     end
#     def name=(name)
#         @name = name
#     end
# end

# class Person
#     attr_reader :name
#     def initialize(name)
#         @name = name
#     end
#     def name=(name)
#         @name = name
#     end
# end

# class Person
#     attr_writer :name
#     def initialize(name)
#         @name = name
#     end
#     def name
#         @name
#     end
# end


# class Person
#     attr_accessor :name, :age
#     def initialize(name)
#         @name = name
#     end
# end

Person = Struct.new(:name)
    


x = Person.new("Moshiur")
x.name = "Moshiur"
puts x.name