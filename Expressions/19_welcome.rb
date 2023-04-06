def say_name(first_name, last_name)
  puts "Hello, #{first_name} #{last_name}\nWelcome to Python!"
end

print "Enter your firstname : "
first_name = gets.chomp
print "Enter your lastname : "
last_name = gets.chomp
say_name(first_name, last_name)
