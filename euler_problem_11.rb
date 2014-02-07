
grid2 = Array.new

matrix = IO.readlines('number_grid.txt').map { |line| line.split.map(&:to_i) }
#puts matrix.inspect

p matrix[0..3]

#require 'matrix' 
#p Matrix.columns(matrix).trace

