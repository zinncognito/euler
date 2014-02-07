def prime_factors(n)
  return [] if n == 1
  factor = (2..n).find {|x| n % x == 0}
  [factor] + prime_factors(n / factor)
end
puts prime_factors(28)


# if n is 1, end the method and return empty array
# set var factor = first number in range 2..n
# that has a remainder of 0 when divided by x
# x being the current iteration of 2..n
# put factor var into an array and then call the
# method we are currently in again passing the 
# value of n divided by the current value of factor

# squigglies are blocks

# or factor = (2..n).find {|x| n % x == 0}
