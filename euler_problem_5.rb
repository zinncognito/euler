# Euler Problem 5
=begin

2520 is the smallest number that can be divided 
by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible 
by all of the numbers from 1 to 20?

=end

smallest = Array.new

integer = 100
	while smallest.count <= 0
		if (integer%20 == 0 && integer%19 == 0 &&
		integer%18 == 0 && integer%17 == 0 &&
		integer%16 == 0 && integer%15 == 0 &&
		integer%14 == 0 && integer%13 == 0 &&
		integer%12 == 0 && integer%11 == 0 &&
		integer%10 == 0 && integer%9 == 0 &&		
		integer%8 == 0 && integer%7 == 0 &&
		integer%6 == 0 && integer%5 == 0 &&
		integer%4 == 0 && integer%3 == 0 &&
		integer%2 == 0 && integer%1 == 0)
		smallest.push(integer)
		end
	integer = integer +1
	end

puts smallest

