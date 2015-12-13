require 'minitest/autorun'
require 'shoulda/context'
require 'insertionsort'

class InsertionSortTest < Minitest::Test
  context 'insertion sort' do

    setup do
      @insert = InsertionSort.new
      @arr0 = []
      @arr1 = [6]
      @arr2 = [5, 3]
      @arrchar = ['e', 'm', 'f', 't', 'l']
      @arrbig = [8, 3, 10, 25, 99, 1020, 9, 5]
      @arrsorted = [0, 1, 2, 3, 4, 5, 6]
      @reverse = [6, 5, 4, 3, 2, 1, 0]
      @negative = [-1, -5, -3, -6]
    end

    should 'sort a simple unordered array' do

      assert_equal @arrbig.sort, @insert.insertion_sort(@arrbig)
    end

    should 'sort a sorted array' do
      assert_equal @arrsorted.sort, @insert.insertion_sort(@arrsorted)
    end

    should 'return an empty array' do
      assert_equal @arr0.sort, @insert.insertion_sort(@arr0)
    end

    should 'return an array with 1 element' do
      assert_equal @arr1.sort, @insert.insertion_sort(@arr1)
    end

    should 'sort an unsorted array with 2 element' do
      assert_equal @arr2.sort, @insert.insertion_sort(@arr2)
    end

    should 'sort an array which is reverse sorted' do
      assert_equal @reverse.sort, @insert.insertion_sort(@reverse)
    end

    meta current: true
    should 'sort an array of negative numbers' do
        # binding.pry
      assert_equal @negative.sort, @insert.insertion_sort(@negative)
    end

    should 'sort an array of chars' do

      assert_equal @arrchar.sort, @insert.insertion_sort(@arrchar)
    end
  end
 end
