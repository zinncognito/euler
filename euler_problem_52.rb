# It can be seen that the number, 125874, and its double, 251748, 
# contain exactly the same digits, but in a different order.

# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, 
# contain the same digits.

tst_x = 125874
tst_y = 251748
z = 0

x_ary = tst_x.to_s.chars.map(&:to_i)
y_ary = tst_y.to_s.chars.map(&:to_i) 

10000000.upto(100000000).each do |x|
	a = (2*x).to_s.chars.map(&:to_i)
	b = (3*x).to_s.chars.map(&:to_i)
	c = (4*x).to_s.chars.map(&:to_i)
	d = (5*x).to_s.chars.map(&:to_i)
	e = (6*x).to_s.chars.map(&:to_i)
	if
	a.sort == b.sort && 
	b.sort == c.sort && 
	c.sort == d.sort && 
	d.sort == e.sort
	z = x
	end
break if z > 0	
end

#puts z
