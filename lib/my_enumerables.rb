# frozen_string_literal: true

# Custom Enumerable Project
module Enumerable
  # Your code goes here
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
