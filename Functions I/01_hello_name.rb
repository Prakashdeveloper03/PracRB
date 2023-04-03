def say_name(name)
  puts "Hello #{name}"
end

print "Enter your name: "
name = gets.chomp
say_name(name)
