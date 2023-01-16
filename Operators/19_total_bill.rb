print "Enter the number of new videos : "
new_videos = gets.chomp.to_i
print "Enter the number of old movies : "
old_movies = gets.chomp.to_i
print "Enter the no of days : "
no_of_days = gets.chomp.to_i
puts "Total bill for the videos is #{(new_videos * no_of_days * 75) + (old_movies * no_of_days * 50)}"
