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
  def my_select
    if block_given?
      arr = []
      my_each do |elem|
        result = yield elem
        arr << elem if result
      end
      return arr
    end
    self
  end

  # my_all?
  def my_all?
    if block_given?
      my_each do |elem|
        result = yield elem
        return false unless result
      end
    end
    true
  end

  # my_any?
  def my_any?
    if block_given?
      my_each do |elem|
        result = yield elem
        return true if result
      end
    end
    false
  end

  # my_none?
  def my_none?(&block)
    !my_any?(&block)
  end

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
# arr2 = %w[apple banana cherry]

# result = 3.times.with_index { |i| puts i }
# puts result.class
# puts result.inspect

# original = [1, 2, 3].each { |num| puts num }
# puts original.class
# puts original.inspect

result = arr.my_none? { |value| value == 0 }

# # result = arr.my_select { |num| num > 10 }
puts result.inspect
