file1, file2 = "files/input.txt", "files/upper.txt"
File.open(file1, "r") do |f1|
  File.open(file2, "w") do |f2|
    f1.each do |line|
      f2.write(line.upcase)
    end
  end
end
