def is_prime(num)
  return false if num <= 1
  (2..Math.sqrt(num)).each do |i|
    return false if num % i == 0
  end
  return true
end

print "Enter the number : "
num = gets.chomp.to_i
is_prime(num) == 1 ? (puts "#{num} is a prime number.") : (puts "#{num} is not a prime number.")
