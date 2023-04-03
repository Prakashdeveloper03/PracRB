def swap(a, b)
  return b, a
end

print "Enter the numbers by space separation : "
n1, n2 = gets.chomp.split.map(&:to_i)
puts "\nBefore swapping : \nn1 = #{n1} n2 = #{n2}\n"
n1, n2 = swap(n1, n2)
puts "After swapping :\nn1 = #{n1} n2 = #{n2}"
