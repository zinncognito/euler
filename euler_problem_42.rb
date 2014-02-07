

words = File.read("euler_42_words.txt").split(",").map(&:strip).sort

alphabet = ("A".."Z").to_a
word_score = 0
word_agg = Array.new
temp_ary = Array.new

int = 0	
words.each do |z|
	temp_ary = words[int].to_s.gsub('"','').split(//)
	temp_ary.each do |x|
		word_score += alphabet.index(x)+1
	end	
	word_agg.push(word_score) 
	temp_ary.clear
	word_score = 0
	int +=1	
end

#puts temp_ary
#puts word_agg.max
tri_ary = Array.new
n = 50
1.upto(n).each do |x|
	y = (1..x).reduce(:+)
	break if y > 192
	tri_ary.push(y)
end

match_ary = tri_ary & word_agg

#puts match_ary.sort
count_ary = Array.new

n = 0

word_agg.each do |x|
	y = match_ary[n]
	if word_agg.count(y) != 0
	count_ary.push(word_agg.count(y))
	end 
	n +=1		
end

sum = 0	
count_ary.each do |i|
  sum += i
end

puts sum 



