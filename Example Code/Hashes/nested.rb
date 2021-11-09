people = {
    'fred' => {
        'name' => 'Fred Elliott',
        'age' => 63,
        'gender' => 'male',
        'favorite painters' => ['Monet', 'Constable', 'Da Vinci']
    },
    'janet' => {
        'name' => 'Janet S Porter',
        'age' => 55,
        'gender' => 'female'
    }
}

print people['fred']['favorite painters'], "\n"         #["Monet", "Constable", "Da Vinci"]

print people['fred']['favorite painters'][2], "\n"      #Da Vinci

print people['janet']['gender'], "\n"                   #female

fred = people['fred']
arr = fred['favorite painters']

print arr[2], "\n"              #Da Vinci

print people.length, "\n"       #2

puts people['fred']['favorite painters'].join(", ")     #Monet, Constable, Da Vinci