
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
# By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
# find the sum of the even-valued terms.


fib_ary = [1, 2, 3]

integer = 2
#end_multiple = 10

	while ( fib_ary[integer] + fib_ary[integer-1] ) <= 4000000
		fib_ary.push( fib_ary[integer] + fib_ary[integer-1] )
		integer = integer +1
	end	

fib_evens = Array.new	

integer = 0
	while integer < fib_ary.count
		if (fib_ary[integer])%2 == 0 
			fib_evens.push(fib_ary[integer])
		end
	integer = integer +1
	end

sum = 0	
	fib_evens.each do |i|
 	sum += i
end

puts sum 

=begin
fib_ary2 = [1, 2, 3]
print fib_ary2
puts 
=end

