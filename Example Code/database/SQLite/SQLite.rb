require 'sqlite3'
$db = SQLite3::Database.new("dbfile")
$db.results_as_hash = true        #orces SQLite to return data in a hash format rather than as an array of attributes (as with CSV)
#From this point, we can use $db in a similar way to the file handles

def disconnect_and_quit
    $db.close
    puts "Bye!"
    exit
end

def create_table
    puts "Creating people table"
    $db.execute %q{
        CREATE TABLE people (
        id integer primary key,
        name varchar(50),
        job varchar(50),
        gender varchar(6),
        age integer)
    }
end

#A database handle will allow you to execute arbitrary SQL with the execute method. All you need to do is pass the SQL as an argument, and SQLite will execute the SQL upon the database.
def add_person
    puts "Enter name:"
    name = gets.chomp       #The chomp method added to gets removes the newline characters that appear at the end of keyboard output retrieved with gets .
    puts "Enter job:"
    job = gets.chomp
    puts "Enter gender:"
    gender = gets.chomp
    puts "Enter age:"
    age = gets.chomp
    $db.execute("INSERT INTO people (name, job, gender, age) VALUES (?, ?, ?, ?)", name, job, gender, age)
end

def find_person
    puts "Enter name or ID of person to find:"
    id = gets.chomp
    person = $db.execute("SELECT * FROM people WHERE name = ? OR id = ?", id, id.to_i).first
    unless person
        puts "No result found"
        return
    end
    puts %Q{Name: #{person['name']}
    Job: #{person['job']}
    Gender: #{person['gender']}
    Age: #{person['age']}}
end


loop do
    puts %q{Please select an option:
    1. Create people table
    2. Add a person
    3. Look for a person
    4. Quit}
    
    case gets.chomp
        when '1'
            create_table
        when '2'
            add_person
        when '3'
            find_person
        when '4'
            disconnect_and_quit
    end
end