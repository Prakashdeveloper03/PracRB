def absolute(num)
  num < 0 ? -num : num
end

print "Enter the number : "
num = gets.chomp.to_i
puts "Absolute value of #{num} is #{absolute(num)}"
