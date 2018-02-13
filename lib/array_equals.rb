# Determines if the two input arrays have the same count of elements
# and the same integer values in the same exact order
def array_equals(array1, array2)
  # return true if both are nil
  if array1 == nil && array2 == nil
    return true
  end

  # return false if only one is nil
  if array1 == nil || array2 == nil
    return false
  end

  # return false if the count of elements don't match
  if array1.length != array2.length
    return false
  end

  # compare each element in both arrays sequentially
  array1.length.times do |i|
    # return false if any elements in ordered sequence do not match
    if array1[i] != array2[i]
      return false
    end
  end

  # return true if all elements match
  return true
end
