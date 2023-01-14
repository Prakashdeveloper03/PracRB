print "Enter the number : "
num = gets.chomp.to_i
if num % 2 == 0
  puts "#{num} is a even number."
else
  puts "#{num} is a odd number."
end
