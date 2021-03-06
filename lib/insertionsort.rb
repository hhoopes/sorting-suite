require 'pry'

module SortingSuite
  class InsertionSort

    def sort(array)
      return array if array.length < 2
      output = []
      output << array.shift

      array.each do | value | # compare every element in the array
        iterations = output.length - 1

        0.upto(iterations) do | i | #compare against every new array element

          if value < output[i] && i == 0
            output.unshift(value)
            break

          elsif value < output[i]
            temp_array = output.slice!(i..iterations)
            output << value
            output.concat temp_array
            break

          elsif value > output[i] && i == iterations
            output << value
          end
        end
      end
      return output
    end
  end
end
