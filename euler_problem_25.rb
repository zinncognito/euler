
=begin
	
The Fibonacci sequence is defined by the recurrence relation:

Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
Hence the first 12 terms will be:

F1 = 1
F2 = 1
F3 = 2
F4 = 3
F5 = 5
F6 = 8
F7 = 13
F8 = 21
F9 = 34
F10 = 55
F11 = 89
F12 = 144

The 12th term, F12, is the first term to contain three digits. 
What is the first term in the Fibonacci sequence to contain 1000 digits?	
=end

fib_ary = [1, 1, 2]

integer = 2
	while fib_ary.last.to_s.length <= 999
		fib_ary.push( fib_ary[integer] + fib_ary[integer-1] )
		integer = integer +1
	end	

puts fib_ary.length

