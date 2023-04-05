file1, file2 = "files/input.txt", "files/reverse.txt"
File.open(file1, "r") do |f1|
  File.open(file2, "w") do |f2|
    f2.write(f1.read.reverse)
  end
end
