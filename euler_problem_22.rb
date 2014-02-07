# Euler Problem 22: 

=begin
	
Then working out the alphabetical value for each name, 
multiply this value by its alphabetical position in the list 
to obtain a name score.

For example, when the list is sorted into alphabetical order, 
COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, 
is the 938th name in the list. 
So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?	
=end

names = File.read("euler_22_names.txt").split(",").map(&:strip).sort

#puts names.first

alphabet = ("A".."Z").to_a
name_score = 0
name_agg = Array.new
temp_ary = Array.new

int = 0	
names.each do |z|
	name_pos = names.index(z)+1
	temp_ary = names[int].to_s.gsub('"','').split(//)
	temp_ary.each do |x|
		name_score += alphabet.index(x)+1
	end	
	name_agg.push(name_score*name_pos) 
	temp_ary.clear
	name_score = 0
	int +=1	
end

sum = 0	
name_agg.each do |i|
  sum += i
end
puts sum 
