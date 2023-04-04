def find_square_root(num)
  raise ArgumentError.new("Cannot find square root of a negative number") if num < 0
  Math.sqrt(num)
end

print "Enter the number : "
num = gets.chomp.to_i
puts find_square_root(num)
