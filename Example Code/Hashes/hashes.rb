dictionary = {
    'name' => 'Moshiur',
    'age' => 26,
    'gender' => 'Male' 
}
dictionary['id'] = 20
p dictionary                        #{"name"=>"Moshiur", "age"=>26, "gender"=>"Male", "id"=>20}
print dictionary['name'],"\n"       #Moshiur
p dictionary.keys                   #["name", "age", "gender", "id"]

dictionary.delete('age')

p dictionary                        #{"name"=>"Moshiur", "gender"=>"Male", "id"=>20}

puts dictionary.size                #3