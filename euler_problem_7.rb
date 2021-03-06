# Euler Problem 7
=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
e can see that the 6th prime is 13.

What is the 10,001st prime number?
=end

# RETURN OF THE PRIMES!

primes_ary = [2,3]
temp_ary = Array.new


integer = 5
	while primes_ary.last <= 10000
		mod_factor = 2
		while mod_factor <= Math.sqrt(integer) #primes are not divisible by integers between 2 and sqrt of N.
			temp_ary.push(integer)			  #insert factor as first record in temporary array.	
			if integer%mod_factor != 0		
			temp_ary.push(0)					#if N is NOT divisible by integer X, insert 0.
			else
			temp_ary.push(1)					#if N is divisible by integer X, insert 1.
			end
			break if temp_ary.include?(1)			#stop the terribly long loop if 1 is found.
			mod_factor = mod_factor +1  			#iterate until meeting sqrt of N.
			end		
		if temp_ary.include?(1)						#if temporary array contains a 1 then factor is not a prime
		temp_ary.clear
		else primes_ary.push(temp_ary.first)		#if temporary does not contain a 1, insert the prime (first value). 
		temp_ary.clear								#clear temporary array and repeat
		end
	integer = integer +2
	end

puts primes_ary.count
puts primes_ary.last

=begin
def prime_factors(n) #this is a method
  return [] if n == 1
  factor = (2..n).find do |x|
  	n % x == 0 #get the factors of n
  end
  [factor] + prime_factors(n / factor)
end
puts prime_factors(600851475143).max
=end