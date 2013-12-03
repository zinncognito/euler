# Euler Problem 6
=begin

The sum of the squares of the first ten natural numbers is,
1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 55^2 = 3025
Hence the difference between the sum of the squares of the 
first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the 
first one hundred natural numbers and the square of the sum.

=end

temp_ary = 1..100
ary1 = temp_ary.to_a
ary2 = temp_ary.to_a

# SUM OF THE SQUARES OF THE FIRST TEN
ary1.map!{|num| num **2}
sum_sq = 0
ary1.each do |i|
  sum_sq += i
end
#puts sum_sq

# SQUARE OF THE SUM OF THE FIRST TEN
sq_sum = 0
ary2.each do |i|
  sq_sum += i
end

puts (sq_sum*sq_sum) - sum_sq

