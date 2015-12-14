require 'minitest/autorun'
require 'benchmark'
require 'shoulda/context'

class SortingSuite::BenchmarkTest < Minitest::Test
  context 'a benchmarking tool' do

    setup do
      @benchmark = SortingSuite::Benchmark.new
      @sorttimes = @benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
    end

    should "output a total time after benchmarking is done" do
      skip
      assert_match "took"
    end

    should "reuse the first array for a second sorting function" do
      bubble_sort = @benchmark.time(SortingSuite::BubbleSort)
      assert_equal 2, @benchmark.runtimes.length
    end

    should "output the slowest sort function when method is run" do
      skip
      assert_equal "InsertionSort was the slowest", @benchmark.slowest
    end

    should "output the fastest sort function when method is run" do
      skip
      assert_equal "InsertionSort was the fastest", @benchmark.fastest
    end

  end
end
