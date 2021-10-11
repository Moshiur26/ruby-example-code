require 'sequel'
# require 'pg'      #postreSQl driver
require 'sqlite3'   #for sqlite

# DB = Sequel.connect('postgres://user:password@localhost/dbname')      #for postgreSQL
DB = Sequel.sqlite('example.db')                                      #for sqlite
# DB = Sequel.sqlite                                                    #for sqlite

# DB.create_table :people do
#     primary_key :id
#     String :first_name
#     String :last_name
#     Integer :age
# end

people = DB[:people]

people.insert( :first_name => "Moshiur", :last_name => "Rahman", :age => 25 )
# puts "There are #{people.count} people in the database"