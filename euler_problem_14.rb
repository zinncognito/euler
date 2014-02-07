=begin
The following iterative sequence is defined for the set of positive integers:

if n is even: n → n/2 
if n is odd: n → 3n + 1 

Using rule above and starting with 13, we get the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) 
contains 10 terms. Although it has not been proved yet (Collatz Problem), 
it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end

sequence = Array.new
seq_length = 0
seq_first = 0

integer = 13.upto(1000000) do |a|
	sequence.push(a)
	n = a
		while n != 1
			if n.even?
				n = n/2
			else	
				n = ((3*n)+1)
			end
			sequence.push(n)
		n = sequence.last
		end	
	if sequence.count > seq_length
		seq_first = a
		seq_length = sequence.count
	end
	sequence.clear
end

puts seq_first


=begin
x = 1901.upto(2000) do |a|
	1.upto(12) do |b|
		date = Date.new(a,b,1)
		if date.sunday?
		sundays.push(Date.new(a,b,1))
		end
	end
end

puts sundays.count
=end