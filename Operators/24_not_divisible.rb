not_divisible = Array(1..100).select(&:even?)
print "Numbers between 1 and 100 that are not divisible by 2 and 4 : \n"
not_divisible.each do |x|
  print "#{x} "
end
