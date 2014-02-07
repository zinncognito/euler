

digits = (2**1000).to_s.chars.map(&:to_i)

sum = 0	
digits.each do |i|
  sum += i
end

puts sum 