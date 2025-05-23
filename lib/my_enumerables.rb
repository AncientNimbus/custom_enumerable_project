# frozen_string_literal: true

# Custom Enumerable Project
module Enumerable
  # my_each_with_index
  def my_each_with_index
    if block_given?
      idx = 0
      my_each do |elem|
        yield [elem, idx]
        idx += 1
      end
    end
    self
  end

  # my_select

  # my_all?

  # my_any?

  # my_none?

  # my_count

  # my_map

  # my_inject
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Iterate over the elements of `self`
  def my_each
    if block_given?
      size.times do |idx|
        yield self[idx]
      end
    end
    self
  end
end

# Test array
arr = [1, 1, 2, 3, 5, 8, 13, 21, 34]
arr2 = %w[apple banana cherry]
# arr.each { |elem| p elem }
# arr.my_each { |elem| p elem }
# result = arr2.my_each { |fruit| puts "I like #{fruit}." }
# puts result.inspect

# result = 3.times.with_index { |i| puts i }
# puts result.class
# puts result.inspect

# original = [1, 2, 3].each { |num| puts num }
# puts original.class
# puts original.inspect
each_with_index_results = []
arr.my_each_with_index do |element, index|
  each_with_index_results << [element * 2, index * 2]
end

puts each_with_index_results.class
puts each_with_index_results.inspect
