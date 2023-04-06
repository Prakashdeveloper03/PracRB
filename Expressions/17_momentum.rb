print "Enter the mass of the object : "
mass = gets.chomp.to_f
print "Enter the velocity of the object : "
velocity = gets.chomp.to_f
puts "The momentum of the object is #{(mass * velocity ** 2).round(5)}"
