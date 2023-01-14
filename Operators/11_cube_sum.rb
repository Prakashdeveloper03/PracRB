print "Enter the number : "
num = gets.chomp.to_i
puts "Sum of squares of first #{num} natural numbers is #{(1..num).to_a.sum { |n| n ** 3 }}"
