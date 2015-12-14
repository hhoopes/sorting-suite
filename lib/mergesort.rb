require 'pry'

module SortingSuite

  class MergeSort

    def sort(array)
      return array if array.length <=1
      l = array.length
      m = array.length/2
      left = array[0..m -1]
      right = array[m..-1]
      merge_compare(sort(left), sort(right))
    end

    def merge_compare(left, right)
      new_array = []

      while left.length > 0 && right.length > 0
        if left[0] > right[0]
          new_array << right.shift
        else new_array << left.shift
        end
      end
      
      if left.empty?
        new_array.concat right
      else # right.empty?
        new_array.concat left
      end
      new_array
    end
  end
end
