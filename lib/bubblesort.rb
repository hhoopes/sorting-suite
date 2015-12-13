require 'pry'


class BubbleSort

  def bubble_sort(array)
    iterations = array.size - 1
    loop do
      swapped = 0
      iterations.times do | i |
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped += 1
        end
      end
    break if swapped < 1
    end
    array
  end

  def benchmark
  end

end
