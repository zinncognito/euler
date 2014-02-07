# The prime 41, can be written as the sum of six consecutive primes:
# => 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.

# The longest sum of consecutive primes below one-thousand 
# that adds to a prime, contains 21 terms, and is equal to 953.

# Which prime, below one-million, can be written as the sum of the 
# most consecutive primes?

require 'prime' 

primes_ary = Array.new
tst_ary = Array.new
sum = 0	

Prime.each(1000) do |x|
	primes_ary.push(x)
	primes_ary.each do |i|
  		sum += i
	end
	if Prime.prime?(sum) && sum <= 1000
		tst_ary.push(sum)
	end
	sum = 0 
end

puts primes_ary
puts tst_ary