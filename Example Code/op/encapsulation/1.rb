class Person
    def initialize(name)
        set_name(name)
    end
    def name 
       return @first_name + ' ' + @last_name
    end

    private
    def set_name(name)
        first_name, last_name = name.split(/\s+/)
        set_first_name(first_name)
        set_last_name(last_name)
    end
    def set_first_name(first_name) 
        @first_name = first_name
    end

    public
    def set_last_name(last_name)
        @last_name = last_name
    end

    # private :set_name, :set_first_name
end

p = Person.new("Moshiur Rahman")
puts p.name

p = Person.new("Moshiur Rahman")
p.set_last_name("Huda")
puts p.name
