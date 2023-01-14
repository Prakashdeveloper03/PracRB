print "Enter the number : "
num = gets.chomp.to_i
if num > 0
  puts "#{num} is a positive number."
else
  puts "#{num} is a negative number."
end
