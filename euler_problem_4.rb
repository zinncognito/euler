# Euler Problem 4
	# A palindromic number reads the same both ways. 
	# The largest palindrome made from the product 
	# 	of two 2-digit numbers is 90009 = 91 × 99.
	# Find the largest palindrome made from the product of two 3-digit numbers.

# Zinn's thoughts
	# 1. recreate logic with two digit numbers
	# 2. work backwords from 99 (or 999)
	# 3. loop through until a match is found.

ary = Array.new

integer = 999.downto(100).each do |x|
	999.downto(100).each do |y|
		fuck_me = x * y
		if fuck_me.to_s == fuck_me.to_s.reverse
			ary.push(fuck_me)
		end 
	end
end

puts ary.max


#compares integer converted to a string to its reverse
#puts integer.to_s == integer.to_s.reverse
