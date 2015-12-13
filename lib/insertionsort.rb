require 'pry'


class InsertionSort

  def insertion_sort(array)
    output = []
    return array if array.length < 2
    output << array.shift

    array.each do | value | # move every element over
      l = output.length - 1

      0.upto(l) do | i | #compare against every new array element

        if value < output[i] && i == 0  # goes at the beginning
          output.unshift(value)
          break

        elsif value < output[i] # after first value
          # binding.pry
          temp_array = output.slice!(i..l)
          output << value
          output << temp_array
          output = output.flatten
          break

        elsif value > output[i] && i == l   #at the end
          output << value
        end
      end
    end
    return output
  end

  def benchmark
  end
end

a = InsertionSort.new
puts a.insertion_sort([8, 3, 10, 25, 99, 1020, 9, 5])
