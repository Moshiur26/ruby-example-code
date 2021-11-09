require_relative 'lib/MyModule'

class MyApp
  extend MyModule
  self.hallo
end

class MyApp2
    include MyModule
end

obj = MyApp2.new
obj.hallo