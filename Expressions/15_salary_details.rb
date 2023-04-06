print "Enter the Basic salary: "
salary = gets.chomp.to_f
hra, ta = 0.1 * salary, 0.05 * salary
puts "Total Salary is #{salary + hra + ta}"
