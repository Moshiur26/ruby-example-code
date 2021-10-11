#
require 'csv'
CSV.open('csv.txt').each do |person|
p person
end

#
require 'csv'
people = CSV.parse(File.read('csv.txt'))
puts people[0][0]
puts people[1][0]
puts people[2][0]


#
require 'csv'
p CSV.read('csv.txt')


#
require 'csv'
people = CSV.read('csv.txt')
laura = people.find { |person| person[0] =~ /Laura/ }
p laura


#
require 'csv'
people = CSV.read('csv.txt')
young_people = people.find_all do |p|
    p[3].to_i.between?(20, 40)
end
p young_people


#
require 'csv'
people = CSV.read('csv.txt')
laura = people.find { |person| person[0] =~ /Laura/ }
laura[0] = "Lauren Smith"
CSV.open('csv.txt', 'w') do |csv|
    people.each do |person|
        csv << person
    end
end