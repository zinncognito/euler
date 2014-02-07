# Euler Problem 13: 

#Determine first 10 digits of the sum of the following 100 50-digit numbers.

big_d = File.open("euler_13.txt") do |f|
  f.map do |line|
    line.to_i
  end
end

sum = 0	
big_d.each do |i|
  sum += i
end

sum.to_s.chars.map(&:to_i).take(10)
