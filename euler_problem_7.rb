# Euler Problem 7
=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
e can see that the 6th prime is 13.

What is the 10,001st prime number?
=end

# RETURN OF THE PRIMES!


primes_ary = [2, 3, 5, 7, 11, 13]
temp_ary = Array.new

integer = primes_ary.last+2

	while primes_ary.count <= 100001
		mod_factor = 2
			while mod_factor <= Math.sqrt(integer) 
				temp_ary.push(integer)			  
				if integer%mod_factor != 0		
				temp_ary.push(0)					
				else
				temp_ary.push(1)					
				end
			break if temp_ary.include?(1)		
			mod_factor = mod_factor +1  		
			end		
		if temp_ary.include?(1)					
		temp_ary.clear
		else primes_ary.push(temp_ary.first)		
		temp_ary.clear								#clear temporary array and repeat
		end
	integer = primes_ary.last+2
	end

# puts primes_ary
# puts primes_ary.count
puts primes_ary.last
puts primes_ary