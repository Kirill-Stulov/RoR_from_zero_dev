# deleting from array

arr = [{a: 1, b: 1, c: nil}, {a: 1, b: 2, c: 0}, {a: 2, b: 3, c: 4}]

arr.delete_if{|hash| hash[:a] == 1 } 

p arr