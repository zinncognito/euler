
n = 100

factorial =  (1..n).reduce(1,:*)

fact_ary = factorial.to_s.chars.map(&:to_i)

sum = 0 
fact_ary.each do |i|
  sum += i
end

puts sum 

# puts (1..100).to_a.inject{|p,n|p*n}.to_s.split(//).map{|s|s.to_i}.inject{|s,n|s+n}