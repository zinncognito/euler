# Euler Problem 13: 

#Determine first 10 digits of the sum of the following 100 50-digit numbers.



#sum = File.open("euler_13.txt").map.inject(0) {|s, l| s+l[0,11].to_i}


puts (x){(10**(9+(Math.log10(x)%1))).floor}.call.File.open("euler_13.txt").map.inject(0) {|s, l| s+l[0,11].to_i}