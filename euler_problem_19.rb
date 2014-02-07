# Euler Problem 19: 
=begin
You are given the following information, but you may prefer to do some research for yourself.

1. Jan 1, 1900 was a Monday.
2. Thirty days in September,April, June and November.
3. All the rest have thirty-one,
4. Saving February alone,
5. Which has twenty-eight, rain or shine. And on leap years, twenty-nine.
6. A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

Q: How many Sundays fell on the first of the month 
during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
=end

require 'date'

# year - month - date
sundays = Array.new

x = 1901.upto(2000) do |a|
	1.upto(12) do |b|
		date = Date.new(a,b,1)
		if date.sunday?
		sundays.push(Date.new(a,b,1))
		end
	end
end

puts sundays.count