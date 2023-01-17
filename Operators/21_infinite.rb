num, even, odd = 0, 0, 0
until num == -1
  print "Enter the number : "
  num = gets.chomp.to_i
  if num % 2 == 0
    even += 1
  elsif num == -1
    next
  else
    odd += 1
  end
end
puts "There are #{even} even numbers and #{odd} odd numbers"
