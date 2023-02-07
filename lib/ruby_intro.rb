# frozen_string_literal: true

# Part 1

def sum(arr)
  if arr.length == 0
    return 0 
  end 
  return arr.sum
end

def max_2_sum(arr)
  if arr.empty? 
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  
  return arr.max(2).reduce(:+)

end



def sum_to_n?(arr, number)
  if arr.empty? or arr.length == 1
    return false 
  end
  arr.combination(2).any? {|x,y| x+y == number}
end


# Part 2

def hello(name)
  var = "Hello, " + name
  return var
end


def starts_with_consonant?(string)
  if string.length == 0
    return false
  end
  if ('A'..'Z').include?(string[0].upcase)
    var = ['A','E','I','O','U']
    if var.include?(string[0].upcase)
    return false
    end
  return true
  end
  return false
end

def binary_multiple_of_4?(string)
  if (string.empty?)
    return false 
  end
  is = string.to_i
    if is == "0"
      return true
    elsif /[a-zA-Z^$3-9*]/.match(string)
      return false
    else
      if /^[10]*$/.match(string) && is % 2 == 0
        return true
      else
        return false
      end
    end
end


# Part 3

# Object representing a book
class BookInStock
  attr_reader :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError if (isbn.empty? or price <= 0)
    @isbn = isbn
    @price = Float(price)
  end
  
  def isbn=(a)
    @isbn=a
  end 
  def price_as_string
    format("$%.2f" % [@price])
  end
end