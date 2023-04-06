print "Enter the address : "
address = gets.chomp.strip.split(",")
address.each do |item|
  puts item
end
