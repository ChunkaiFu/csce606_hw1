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

=begin 
# Part 2

def hello(name)
  var = "Hello, " + name
  return var
end

def starts_with_consonant?(string)
  if s.length == 0
    return false
  end
  if ('A'..'Z').include?(s[0].upcase)
    var = ['A','E','I','O','U']
    if var.include?(s[0].upcase)
    return false
    end
  return true
  end
  return false
end

def binary_multiple_of_4?(string)
  is = s.to_i
    if s == "0"
      return true
    elsif /[a-zA-Z^$3-9*]/.match(s)
      return false
    else
      if /^[10]*00$/.match(s) && is % 2 == 0
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
    @isbn = isbn
    @price = Float(price)
  end
  
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
  
  book = BookInStock.new("isbn1", 33.80)
  puts "ISBN = #{book.isbn}"
  puts "Price = #{book.price}"
  book.price = book.price * 0.75
  puts "New price = #{book.price}"
end

=end 
