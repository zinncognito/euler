# Euler Problem 3
	# The prime factors of 13195 are 5, 7, 13 and 29.
	# What is the largest prime factor of the number 600851475143?

# Zinn's Steps
	# 1. get all odd factors of 600851475143.
	# 2. determine any are primes
	# 3. find the largest

find_primes = 600851475143 #set to 13195 for testing

factors_ary = Array.new
factors_int = 2 
	while factors_int < find_primes
		if find_primes%factors_int == 0
			if factors_int%2 != 0 #eliminate even numbers
			factors_ary.push(factors_int)
			end
		end
	factors_int = factors_int +1
	end

# RETURN OF THE PRIMES!

primes_ary = Array.new
temp_ary = Array.new

integer = 0

	while integer < factors_ary.count 	#look for primes across all factors of N.
		mod_factor = 2
		factor = factors_ary[integer]
			while mod_factor <= Math.sqrt(factor) #primes are not divisible by integers between 2 and sqrt of N.
				temp_ary.push(factor)			  #insert factor as first record in temporary array.	
				if factor%mod_factor != 0		
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
	integer = integer +1
	end

puts primes_ary.last
