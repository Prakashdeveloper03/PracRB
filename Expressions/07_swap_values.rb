print "Enter a: "
a = gets.chomp.to_i
print "Enter b: "
b = gets.chomp.to_i
a, b = b, a
puts "After swap a = #{a} and b = #{b}"
