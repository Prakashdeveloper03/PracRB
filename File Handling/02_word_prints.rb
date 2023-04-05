File.open("files/print.txt", "r") do |file|
  file.each_line do |line|
    if line.include?("print")
      puts line
    end
  end
end
