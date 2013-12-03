# Euler Problem 4
	# A palindromic number reads the same both ways. 
	# The largest palindrome made from the product 
	# 	of two 2-digit numbers is 9009 = 91 × 99.
	# Find the largest palindrome made from the product of two 3-digit numbers.

# Zinn's thoughts
	# 1. recreate logic with two digit numbers
	# 2. work backwords from 99 (or 999)
	# 3. loop through until a match is found.

integer = 91 * 99
word_test = integer.to_s.split(//)

first_int = 0
last_int = word_test.count-1

while first_int < last_int/2
	break if word_test[first_int] != word_test[last_int]

	first_int = first_int +1
	last_int = last_int-1
end

print word_test
puts
puts word_test.count