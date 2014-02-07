
powers = Array.new

2.upto(100) do |a|
	2.upto(100) do |b|
	powers.push(a**b)
	end
end

puts powers.uniq.count