=begin
Let d(n) be defined as the sum of proper divisors of n 
(numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair 
and each of a and b are called amicable numbers.

For example, 
The proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; 
	therefore d(220) = 284. 
The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

220 and 284 is an amicable pair, or both considered amicalbe numbers.

Evaluate the sum of all the amicable numbers under 10,000.
=end 

amicable_ary = Array.new

2.upto(9999).each do |n|
  y = (1..n-1).select {|x| n % x == 0}.inject(:+) 
  z = (1..y-1).select {|x| y % x == 0}.inject(:+) 
  if n == z && amicable_ary.include?(n)	== false && n != y
  	amicable_ary.push(n)
  	amicable_ary.push(y)
  	#puts z
  end
end 


sum = 0	
amicable_ary.each do |i|
  sum += i
end

puts sum 
#puts amicable_ary


# MZ Note: this also works instead of inject(:+) .. inject{|sum,x| sum + x }