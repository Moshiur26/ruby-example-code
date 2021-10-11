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

print people['fred']['favorite painters'], "\n"

print people['fred']['favorite painters'][2], "\n"

print people['janet']['gender'], "\n"

fred = people['fred']
arr = fred['favorite painters']

print arr[2], "\n"

print people.length, "\n"

puts people['fred']['favorite painters'].join(", ")