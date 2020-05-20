require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/stack'

class StackTest < Minitest::Test

  def setup
    @object = Stack.new()
  end

  def test_it_can_add_elements_to_stack
    @object.insert(2)
    assert_equal 2, @object.stack[0]

    @object.insert(5)
    @object.insert(4)
    @object.insert(8)
    assert_equal 5, @object.stack[1]
    assert_equal 4, @object.stack[2]
    assert_equal 8, @object.stack[3]
  end

  def test_can_remove_last_element
    @object.insert(2)
    @object.insert(5)
    @object.insert(4)
    @object.insert(8)
    @object.insert(10)

    assert_equal 10, @object.remove
    assert_equal [2, 5, 4, 8], @object.stack
    assert_equal 8, @object.remove
    assert_equal [2, 5, 4], @object.stack
  end

  def test_can_get_total_count
    @object.insert(2)
    @object.insert(5)
    @object.insert(4)
    @object.insert(8)
    @object.insert(10)

    assert_equal 5, @object.length
  end

  def test_can_look_at_yop_element_without_removing
    @object.insert(2)
    @object.insert(5)
    @object.insert(4)
    @object.insert(8)
    @object.insert(10)

    assert_equal 10, @object.peek
    assert_equal [2, 5, 4, 8, 10], @object.stack
  end

  def test_can_find_max_element
    @object.insert(2)
    @object.insert(5)
    @object.insert(4)
    @object.insert(8)
    @object.insert(10)

    assert_equal 10, @object.max
    assert_equal [2, 5, 4, 8, 10], @object.stack
  end
end
