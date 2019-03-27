require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/array_equals'

describe "array equals" do
  describe "basic tests" do
    it "arrays are equal" do
      array1 = [10, 20, 30, 40, 50, 60]
      array2 = [10, 20, 30, 40, 50, 60]

      array_equals(array1, array2).must_equal true
    end

    it "arrays not equal: first six elements are same" do
      array1 = [10, 20, 30, 40, 50, 60]
      array2 = [10, 20, 30, 40, 50, 60, 70]

      array_equals(array1, array2).must_equal false
    end

    it "arrays not equal: same count of elements" do
      array1 = [10, 20, 30, 40, 50, 60]
      array2 = [20, 3, 50, 10, 68, 74]

      array_equals(array1, array2).must_equal false
    end
  end

  describe "edge cases" do
    it "arrays are empty: equal" do
      array1 = []
      array2 = []

      array_equals(array1, array2).must_equal true
    end

    it "only first array is empty: not equal" do
      array1 = []
      array2 = [50, 30]

      array_equals(array1, array2).must_equal false
    end

    it "only second array is empty: not equal" do
      array1 = [20]
      array2 = []

      array_equals(array1, array2).must_equal false
    end

    it "arrays are nil: equal" do
      array1 = nil
      array2 = nil

      array_equals(array1, array2).must_equal true
    end

    it "only first array is nil: not equal" do
      array1 = nil
      array2 = [10, 20]

      array_equals(array1, array2).must_equal false
    end

    it "only second array is nil: not equal" do
      array1 = [20]
      array2 = nil

      array_equals(array1, array2).must_equal false
    end
    
        it "first array is empty and second array is nil: not equal" do
      array1 = []
      array2 = nil
      array_equals(array1, array2).must_equal false
    end

    it "first array is nil and second array is empty: not equal" do
      array1 = nil
      array2 = []
      array_equals(array1, array2).must_equal false
    end

    it "first array and second array are equal until last index: not equal" do
      array1 = [10, 20, 30, 40, 50, 60]
      array2 = [10, 20, 30, 40, 50, 547]
      array_equals(array1, array2).must_equal false
    end
  end
end
