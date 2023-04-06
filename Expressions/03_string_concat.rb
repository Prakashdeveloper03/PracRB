print "Enter the string by space separator : "
x, y = gets.chomp.strip.split
puts "Using concat method: #{x.concat(" ", y)}"
puts "Using << operator: #{x << " " << y}"
puts "Using + operator: #{x + " " + y}"
puts "Using interpolation: #{x}#{y}"
