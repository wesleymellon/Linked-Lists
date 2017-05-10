class LinkedList

  attr_accessor :first_node, :last_node

  def initialize
    @first_node = nil
    @last_node = nil
  end

  def initialize_node(new_node)
    @first_node = new_node
    @last_node = new_node
  end

  def append(new_node)
    if @first_node == nil
      initialize_node(new_node)
    else
      @last_node.pointer = new_node
      @last_node = new_node
    end
  end

  def prepend(new_node)
    if @first_node == nil
      initialize_node(new_node)
    else
      new_node.pointer = @first_node
      @first_node = new_node
    end
  end

  def size
    count = 0
    node = @first_node
    while node != nil
      node = node.pointer
      count += 1
    end
    count
  end

  def head
    @first_node
  end

  def tail
    @last_node
  end

  def at(index)
    node = @first_node
    index.times do
      node = node.pointer
    end

    node
  end

  def pop
    length = size()
    node = @first_node
    if length == 0
      p "The stack is empty"
    elsif length == 1
      @first_node = @last_node = nil
    else
      (length - 2).times do 
        node = node.pointer
      end

      node.pointer = nil
    end
  end

  def contains?(target)
    node = @first_node
    answer = false
    while node != nil
      if node.value == target
        answer = true
      end
      node = node.pointer
    end
    answer
  end

  def find(data)
    node = @first_node
    answer = nil
    (length - 1).times do |i|
      if node.value = data
        answer = i
      end
      node = node.pointer
    end

    answer
  end

  def to_s
    str = ""
    node = @first_node
    while node != nil
      str += "( #{node.value} ) -> "
      node = node.pointer
    end
    str += "nil"
  end
end

class Node

  attr_accessor :value, :pointer

  def initialize(value)
    @value = value
    @pointer = nil
  end

  def get_value
    @value
  end

  def get_next_node
    @pointer
  end
end

