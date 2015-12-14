require_relative 'lib/insertionsort'
require_relative 'lib/mergesort'
require_relative 'lib/bubblesort'
require 'pry'

module SortingSuite
  class Benchmark

    attr_accessor :runtimes

    def initialize
      @runtimes = Hash.new
    end

    def time(sorttype, *arr)
      array = arr if arr
      get_runtimes(sorttype, array)
      output_runtimes(sorttype)
    end

    def get_runtimes(sorttype, array)
      sorter = sorttype.new
      starttime = Time.now
      sorter.sort(array)
      endtime = Time.now
      runtime = endtime - starttime
      @runtimes[sorttype] = runtime
    end

    def output_runtimes(sorttype)
      puts "#{format(sorttype)} took #{@runtimes[sorttype]} seconds."
    end

    def fastest
      return if @runtimes.length < 2
      a = @runtimes.to_a
      fastest = a.min_by do | pair |
        pair.last
      end.first
      puts "#{format(fastest)} was the fastest"
    end

    def slowest
      return if @runtimes.length < 2
      a = @runtimes.to_a
      slowest = a.max_by do | pair |
        pair.last
      end.first
      puts "#{format(slowest)} was the slowest"
    end

    def format(sorttype)
      sorttype.to_s.split("::").last
    end
  end
end
