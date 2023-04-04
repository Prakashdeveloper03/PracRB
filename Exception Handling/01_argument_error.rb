def find_smaller(num1, num2)
  raise ArgumentError.new("First number is not greater than second number") unless num1 > num2
  num2
end

print "Enter the number 1 : "
num1 = gets.chomp.to_i
print "Enter the number 2 : "
num2 = gets.chomp.to_i
puts find_smaller(num1, num2)
