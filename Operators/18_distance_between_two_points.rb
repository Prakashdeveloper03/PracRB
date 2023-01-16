print "Enter the value of x1 : "
x1 = gets.chomp.to_i
print "Enter the value of x2 : "
y1 = gets.chomp.to_i
print "Enter the value of y1 : "
x2 = gets.chomp.to_i
print "Enter the value of y2 : "
y2 = gets.chomp.to_i
puts "Euclidean distance of (%d, %d) and (%d, %d) is %.5f" % [x1, y1, x2, y2, (((x1 - x2) ** 2) + ((y1 - y2) ** 2)) ** 0.5]
