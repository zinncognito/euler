=begin

A Pythagorean triplet is a set of three natural numbers, a < b < c, 
for which a2 + b2 = c2 
Example, (3^2 + 4^2) = (9 + 16 = 25) = (5^2).

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.	
=end


product_ary = Array.new

integer = 1.upto(1000).each do |a|
	1.upto(1000).each do |b|
		1.upto(1000).each do |c|
		#break if (a + b + c) != 1000
			product = (a**2)+(b**2)
			result = (c**2)
			if product == result && (a + b + c) == 1000
				product_ary.push(a*b*c)
			end	
		end
	end
end

puts product_ary