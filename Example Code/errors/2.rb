class BadDataException < RuntimeError
end

class Person
    def initialize(name)
        raise BadDataException "Name is not provided" if name.empty?
    end
end

Person.new