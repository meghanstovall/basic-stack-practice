# First In Last Out
class Stack

  attr_reader :stack

  def initialize()
    @stack = []
  end

  # push
  def insert(data)
    index = 0
    until @stack[index] == nil
      index += 1
    end
    @stack[index] = data
  end

  # pop
  def remove
    index = 0
    until @stack[index] == nil
      index += 1
    end
    @stack.delete_at(index - 1)
  end

  # count
  def length
    count = 0
    @stack.each do |object|
      count += 1
    end
    count
  end

  # peek
  def peek
    index = 0
    until @stack[index] == nil
      index += 1
    end
    @stack[index - 1]
  end

  # max
  def max
    max = 0
    @stack.each do |object|
      if object > max
        max = object
      end
    end
    max
  end
end
