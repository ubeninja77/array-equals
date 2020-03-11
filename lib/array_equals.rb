# Determines if the two input arrays have the same count of elements
# and the same integer values in the same exact order

def array_equals(array1, array2)
  
  if array1 == nil && array2 == nil 
    return true
  elsif array1 == nil || array2 == nil || array1.length != array2.length
    return false
  end
  
  array1.each_with_index do |number, index|
    if array1[index] != array2[index]
      return false
    end
  end
    return true
end
