def say_name(name)
  "Hello, #{name}"
end

print "Enter your name : "
name = gets.chomp
puts say_name(name)
