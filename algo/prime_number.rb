# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

def is_prime?(number)    
  divisible_3 = number / 3.0
  divisible_2 = number / 2.0

  if divisible_2 == divisible_2.to_i || divisible_3 == divisible_3.to_i
    return false
  else
    return true
  end 
end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.


def highest_prime_number(number)
  divisible_3 = number / 3.0
  divisible_2 = number / 2.0

  while number > 0 do
    if divisible_2 == divisible_2.to_i || divisible_3 == divisible_3.to_i
      number -= 1
    else
      return number
    end
  end
end



value = 12
p is_prime?(value)
p highest_prime_number(value)
