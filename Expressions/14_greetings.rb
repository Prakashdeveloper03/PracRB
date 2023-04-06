def say_name(first_name, last_name)
  puts "Greetings!!! #{first_name} #{last_name}"
end

print "Enter your firstname : "
first_name = gets.chomp
print "Enter your lastname : "
last_name = gets.chomp
say_name(first_name, last_name)
