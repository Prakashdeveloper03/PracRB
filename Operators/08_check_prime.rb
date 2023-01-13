require "Prime"

print "Enter the number : "
num = gets.chomp.to_i
if Prime.prime?(num)
  puts "#{num} is a prime number."
else
  puts "#{num} is not a prime number."
end
