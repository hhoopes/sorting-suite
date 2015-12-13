require 'pry'


class BubbleSort

  def bubble_sort(array)
    iterations = array.size - 2 # -1 for zero index, -1 to not look at last
    if iterations == 0
      bubble_bigger(array, 0)
      return array
    end

    loop do
      swaps = 0
      0.upto(iterations) do | i |
        swaps += bubble_bigger(array, i)
      end
      break if swaps < 1
    end
    array
  end

  def bubble_bigger(array, i)
    swapped = 0
    if array[i] > array[i + 1]
      array[i], array[i+1] = array[i + 1], array[i]
      swapped += 1
    end
    swapped
  end

  def benchmark
  end

end
