# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.


primes_ary = [2,3]
temp_ary = Array.new


integer = 5
	while primes_ary.last < 2000000
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

sum = 0	
primes_ary.each do |i|
  sum += i
end

puts sum 

