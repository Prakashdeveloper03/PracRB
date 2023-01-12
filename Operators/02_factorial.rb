def factorial(num)
  (1..num).reduce(:*) || 1
end

print "Enter the number : "
num = gets.chomp.to_i
puts "Factorial of #{num} is #{factorial(num)}"
