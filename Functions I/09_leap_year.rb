def is_leap_year(year)
  if (year % 400).zero? || ((year % 4).zero? && !(year % 100).zero?)
    puts "#{year} is a leap year"
  else
    puts "#{year} is not a leap year"
  end
end

print "Enter a year : "
year = gets.chomp.to_i
is_leap_year(year)
