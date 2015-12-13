require 'pry'

module SortingSuite
  class MergeSort

    def merge_sort(array)
      if array.length < 1
        return array

      else
        left, right = [], []
        m = array.length/2
        left = array.slice(0..m).merge_sort
        right = array.slice(m + 1..-1).merge_sort

        return merge_compare(left, right)
      end
    end

    def merge_compare(left, right)
      new_array = []
      if left[first] > right[first]
        new_array << left.shift
      end
      merge_compare(left, right)
    end

    def benchmark
    end
  end
end
