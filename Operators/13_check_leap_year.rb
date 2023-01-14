print "Enter the year : "
year = gets.chomp.to_i
if year % 400 == 0
  puts "#{year} is a leap year"
elsif year % 4 == 0 && year % 100 != 0
  puts "#{year} is a leap year"
else
  puts "#{year} is not a leap year"
end
