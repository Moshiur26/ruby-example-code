#Handling Passed Exceptions
begin 
    puts 10/0

rescue => e
    puts e.class
end