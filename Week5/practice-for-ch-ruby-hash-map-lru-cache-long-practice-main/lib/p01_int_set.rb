require 'byebug'

class MaxIntSet
  attr_accessor :store

  def initialize(max)
    @store = Array.new(max+1) {false}
  end

  def include?(num)
    @store[num]    
  end

  def insert(number) 
    if (0...@store.length).include?(number)
      @store[number] = true
    else
      raise "Out of bounds"
    end
  end

  def remove(num)
    if @store[num] != nil
      @store[num] = false
    end
  end


  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  attr_accessor :num_buckets

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @num_buckets = num_buckets
  end

  def insert(num)
    @store[num % @num_buckets] << num
  end

  def remove(num)
    @store[num % @num_buckets].delete(num)
  end

  def include?(num)
    @store[num % @num_buckets].include?(num)
  end

  private

  # def [](num)
  #   @store[num % @num_buckets]
  # end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def num_buckets
    @store.length
  end

  def resize!
  end

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end
end