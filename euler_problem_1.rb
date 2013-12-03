
puts "Let's start. Pick a number above 1,000"

end_multiple = gets.chomp.to_i

puts 'Party time! Let\'s now sum all numbers below '+ end_multiple.to_s + ' that are multiples of 3 or 5!'

ary = Array.new

multiple = 1
#end_multiple = 10

	while multiple < end_multiple
		if multiple%5 == 0 || multiple%3 == 0 # IF remainder of year divided by 4 = 0
			ary.push(multiple)
		end
	multiple = multiple +1
	end

sum = 0	
ary.each do |i|
  sum += i
end

puts sum 