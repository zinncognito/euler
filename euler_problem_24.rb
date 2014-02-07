
digits = Array.new

0.upto(9).each do |x|
	y = x
	digits.push(y)
end

#p digits

digits2 =  digits.permutation.to_a

digits_final = Array.new

n = 0
digits2.each do |x|
	break if digits_final.count > 1000000
	x = digits2[n].join
	digits_final.push(x)
n += 1	
end

puts digits_final.sort[999999]


