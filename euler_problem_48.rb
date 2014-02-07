
series = Array.new

sum = 0
integer = 1.upto(1000).each do |x|
	y = (x**x)
	sum += y
end

#puts sum

p sum.to_s.chars.map(&:to_i).last(10).join.to_i

#answer = 9110846700



