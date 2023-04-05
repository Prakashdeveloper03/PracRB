file1, file2 = "files/origin.txt", "files/destination.txt"
file1_contents, file2_contents = ""
File.open(file1, "r") do |f1|
  file1_contents = f1.read()
end

File.open(file2, "r") do |f2|
  file2_contents = f2.read()
end

File.open(file1, "w") do |f1|
  f1.write(file2_contents)
end

File.open(file2, "w") do |f2|
  f2.write(file1_contents)
end
