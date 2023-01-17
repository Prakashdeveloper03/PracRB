require "Prime"
upper, lower = 20, 1
print "\nPrime number between #{lower} and #{upper} : #{Prime.take_while { |p| p >= lower && p <= upper }.reverse}\n"
