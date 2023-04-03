def sphere(radius)
  area = 4 * Math::PI * radius ** 2
  volume = (4.0 / 3) * (Math::PI * radius ** 3)
  return area, volume
end

print "Radius of sphere: "
radius = gets.to_f
area, volume = sphere(radius)
puts "Surface area of the sphere is #{format("%.5f", area)}"
puts "Volume of the sphere is #{format("%.5f", volume)}"
