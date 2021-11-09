class Class
    def add_accessor(accessor_name)
        self.class_eval %{
        def #{accessor_name}
            @#{accessor_name}
        end
        def #{accessor_name}=(value)
            @#{accessor_name} = value
        end
        }
    end
end

class Person
    attr_accessor :name
end

obj = Person.new
obj.name = "Moshiur"

puts obj.name

