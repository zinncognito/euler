
powers = Array.new
powers2 = Array.new
sum_ary = Array.new
final = Array.new

2.upto(999999).each do |x|
	y = x
	powers.push(y)
end

#puts powers
		
sum = 0
n = 0

powers.each do |a|
	powers2 = powers[n].to_s.split(//)
	powers2.each do |b|
		z = ((b.to_i)**5)
		sum += z
		end
	if (a == sum)	
	final.push(a)
	end
powers2.clear
sum = 0	
n += 1
end 

final_sum = 0	
final.each do |i|
  final_sum += i
end
puts final
puts final_sum 