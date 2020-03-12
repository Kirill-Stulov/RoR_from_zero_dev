# just use method sort! to get array items sorted in alphabetical


# more complex example
def alphabetize(arr, rev=false)  # tell Ruby that alphabetize has a second parameter, rev (for “reverse”) that will default to false if the user doesn’t type in two arguments. 
  arr.sort!
  if rev
    arr.reverse!
  else
    arr
  end
end

numbers = [5,1,3,8]
puts alphabetize(numbers)