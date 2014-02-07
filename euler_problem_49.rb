=begin
The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330, 
is unusual in two ways: (i) each of the three terms are prime, and, 
(ii) each of the 4-digit numbers are permutations of one another.

There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, exhibiting 
this property, but there is one other 4-digit increasing sequence.

What 12-digit number do you form by concatenating the three terms in this sequence?
=end

require 'mathn'

1000.upto(9999) do |a|
	x = a
	y = x + 3330
	z = y + 3330
	perms = x.to_s.chars.to_a.permutation.map(&:join).map(&:to_i).uniq
	if perms.include?(y) && perms.include?(z) && x.prime? && y.prime? && z.prime?
		puts [x,y,z].join.to_i
	end	
end

answer = 296962999629