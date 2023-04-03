def largest(*args)
  return args.max
end

print "Enter the numbers by space separation : "
n1, n2, n3 = gets.chomp.split.map(&:to_i)
puts "Largest element among the three values is #{largest(n1, n2, n3)}"
