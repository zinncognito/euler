tst_x = 585.to_s(2).split('').map { |x| x.to_i }
tst_y = 585.to_s(10).split('').map { |x| x.to_i }


sum = 0
1.upto(1000000).each do |x|
	base_2 = x.to_s(2).split('').map { |x| x.to_i }
	if base_2.join.to_s == base_2.join.to_s.reverse && x.to_s == x.to_s.reverse
	sum += x
	end
end	

puts sum