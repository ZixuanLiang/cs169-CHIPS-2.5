# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  s = 0
  arr.each {|x| s+=x}
  s
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.max(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  end
  arr.each do |e|
    arr.delete(e)
    if arr.include?(n - e)
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (/[^aeiou\W]/i =~ s) == 0
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if !s.empty? and (/[^01]/ =~ s) == nil and (s.to_i % 4) == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  @isbn
  @price
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  def price=(new_price)
    @price = new_price
  end
  def price_as_string
    return "$%.2f" % @price
  end
end
