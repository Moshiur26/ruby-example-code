class Person
    def initialize(name)
    raise ArgumentError, "No name present" if name.empty?
    end
end

obj = Person.new()
