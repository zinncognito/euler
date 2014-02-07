
digits = Array.new
digits_final = Array.new

0.upto(9).each do |x|
	y = x
	digits.push(y)
end

digits2 =  digits.permutation.to_a
 
n = 0
digits2.each do |x|
	x = digits2[n].join
	y = digits2[n].to_a
		a = y[1..3].join.to_i	 
		b = y[2..4].join.to_i
		c = y[3..5].join.to_i	 
		d = y[4..6].join.to_i
		e = y[5..7].join.to_i	 
		f = y[6..8].join.to_i
		g = y[7..9].join.to_i
	if  a%2 == 0 && b%3 == 0 && c%5 == 0 && d%7 == 0 && e%11 == 0 && f%13 == 0 && g%17 == 0
	then digits_final.push(x)
	end
n += 1	
end

sum = 0	
digits_final.each do |i|
  sum += i
end

puts sum 



