#Modules simply provide ways to organize methods, classes, and constants into separate namespaces.
module ToolBox
    class Ruler
        attr_accessor :length
    end
end

module Country
    class Ruler
        attr_accessor :name
    end
end

a = ToolBox::Ruler.new
a.length = 50

b = Country::Ruler.new
b.name = "Moshiur Rahman from Rangpur"