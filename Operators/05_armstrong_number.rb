print "Enter the number : "
num = gets.chomp.to_i
if num == num.digits.sum { |digit| digit ** num.digits.size }
  puts "#{num} is a armstrong number"
else
  puts "#{num} is not a armstrong number"
end
