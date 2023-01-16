print "Enter the mass of the object : "
mass = gets.chomp.to_f
print "Enter the velocity of the object : "
velocity = gets.chomp.to_f
puts "The momentum of the object is %.5f" % [mass * (velocity ** 2)]
