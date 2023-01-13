require "Prime"
print "Enter the lower bound : "
lower = gets.chomp.to_i
print "Enter the upper bound : "
upper = gets.chomp.to_i
print "\nPrime number between #{lower} and #{upper} : #{Prime.take_while { |p| p >= lower && p <= upper }}\n"
