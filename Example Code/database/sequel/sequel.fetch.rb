require 'sequel'
# require 'pg'      #postreSQl driver
require 'sqlite3'   #for sqlite

# DB = Sequel.connect('postgres://user:password@localhost/dbname')      #for postgreSQL
DB = Sequel.sqlite('example.db')                                      #for sqlite
# DB = Sequel.sqlite                                                    #for sqlite


people = DB[:people]
puts "There are #{people.count} people in the database"
# people.each do |person|
#     puts person[:first_name]
# end
DB.fetch("SELECT * FROM people") do |row|
    puts row[:first_name]
end