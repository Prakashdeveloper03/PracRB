text = "hello world. this is a test 1.2.3.4"
file_name = "files/replace.txt"
formatted_contents = ""
capitalize_next = true
text.each_char do |c|
  if c == "."
    capitalize_next = true
  elsif capitalize_next && /[[:alpha:]]/.match(c)
    formatted_contents += c.upcase
    capitalize_next = false
  elsif /[[:digit:]]/.match(c)
    formatted_contents += "(#{c})"
  else
    formatted_contents += c
  end
end

File.open(file_name, "w") do |output_file|
  output_file.write(formatted_contents)
end
