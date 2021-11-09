arr = "this is moshiur. test. ruby".split(/\./)          #
puts arr[0]         #this is moshiur


arr = [1, 2, 3, 4, 5, 6]

p arr.first(3)      #[1, 2, 3]
p arr.last(4)       #[3, 4, 5, 6]

arr = arr[0..2] + arr[2..4] + arr[3..5]         #[1, 2, 3, 3, 4, 5, 4, 5, 6]
p arr

arr = [1, 2, 3, 4, 5, 6]
arr = [*arr[0..2], *arr]            #[1, 2, 3, 1, 2, 3, 4, 5, 6]
p arr

#append
arr = [1, 2, 3, 4, 5, 6]
arr.push(*arr[0..2])
p arr                               #[1, 2, 3, 4, 5, 6, 1, 2, 3]

#prepend
arr = [1, 2, 3, 4, 5, 6]            
arr.unshift(*arr[3..5])             #[4, 5, 6, 1, 2, 3, 4, 5, 6]
p arr

#splice
arr = [1, 2, 3, 4, 5, 6]           
arr.insert(2, *arr[0..2])           #[1, 2, 1, 2, 3, 3, 4, 5, 6]
p arr

#splice
arr = [1, 2, 3, 4, 5, 6]           
arr[arr.length..0] = arr[1..3]      #[1, 2, 3, 4, 5, 6, 2, 3, 4]
p arr

#splice
arr = [1, 2, 3, 4, 5, 6]           
arr[arr.length-3, 2] = arr[0..2]      #[1, 2, 3, 1, 2, 3, 6]
p arr

#splice
arr = [1, 2, 3, 4, 5, 6]           
arr[2..3] =  arr[0..4]          #[1, 2, 1, 2, 3, 4, 5, 5, 6]
p arr

arr = [1, 2, 3, 4, 5, 6]           
arr.pop(4)
p arr               #[1, 2]

arr = [1, 2, 3, 4, 5, 6]           
arr.shift(4)
p arr               #[5, 6]

arr = [1, 2, 2, 2, 3]           
arr.delete(2)
p arr               #[1, 3]

arr = [1, 2, 3, 4]           
arr.delete_at(2)
p arr               #[1, 2, 4]