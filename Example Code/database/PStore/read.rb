class Person
    attr_accessor :name, :job, :gender, :age
end

require 'pstore'
store = PStore.new("storagefile")
people = []
store.transaction do
    people = store[:people]
end
# At this point the Person objects inside people can be treated
# as totally local objects.

people.each do |person|
    puts person.name + person.age
end