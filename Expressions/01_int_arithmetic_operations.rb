print "Enter the number 1 : "
n1 = gets.chomp
print "Enter the number 2 : "
n2 = gets.chomp
operators = ["+", "-", "*", "/", "**"]
operators.each do |x|
  puts "#{n1} #{x} #{n2} = #{eval(n1 + x + n2)}"
end
