print "Enter the principal amount : "
principle_amt = gets.chomp.to_i
print "Enter the time period in years : "
time_period = gets.chomp.to_i
print "Enter the rate of interest : "
rate_of_interest = gets.chomp.to_i
puts "The Simple Interest is #{(principle_amt * time_period * rate_of_interest) / 100}"
puts "Compound Interest is #{(principle_amt * (1 + rate_of_interest / 100.0) ** time_period - principle_amt).round(2)}"
