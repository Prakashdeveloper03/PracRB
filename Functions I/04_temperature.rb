def fahrenheit(celsius)
  return (celsius * 1.8) + 32
end

print "Enter the celsius : "
celsius = gets.chomp.to_f
puts "Fahrenheit of #{celsius} celsius is #{"%.2f" % fahrenheit(celsius)}"
