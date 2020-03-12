=begin
	The combined comparison operator looks like this: <=>. 
	It returns 0 if the first operand (item to be compared) equals the second,
	1 if the first operand is greater than the second, 
	and -1 if the first operand is less than the second.
	****************************************************
	A block that is passed into the sort method must return either1,
	0, or -1. It should return -1 if the first block parameter should come before the second, 1 if vice versa, and 0 if they are of equal weight, meaning one does not come before the other (i.e. if two values are equal)
=end
book_1 = "A Wrinkle in Time"
book_2 = "A Brief History of Time"

puts book_1 <=> book_2