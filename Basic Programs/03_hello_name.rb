def say_fullname(first_name, last_name)
  "Hello, #{first_name} #{last_name}"
end

print "Enter your first name : "
first_name = gets.chomp
print "Enter your last name : "
last_name = gets.chomp
puts say_fullname(first_name, last_name)
