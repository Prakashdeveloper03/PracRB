require "json"

def read_data()
  begin
    File.open("files/faculty.json", "r") do |file|
      return JSON.load(file)
    end
  rescue
    return []
  end
end

def write_data(data)
  File.open("files/faculty.json", "w") do |file|
    JSON.dump(data, file)
  end
end

def add_faculty(faculty_id, name, department, designation)
  data = read_data()
  faculty = {
    "faculty_id" => faculty_id,
    "name" => name,
    "department" => department,
    "designation" => designation,
  }
  data.append(faculty)
  write_data(data)
  puts "Faculty added successfully\n"
end

def delete_faculty(faculty_id)
  data = read_data()
  data.each_with_index do |faculty, index|
    if faculty["faculty_id"] == faculty_id
      data.delete_at(index)
      write_data(data)
      puts "Faculty deleted successfully\n"
      return
    end
  end
  puts "Faculty not found\n"
end

def update_faculty(faculty_id, name, department, designation)
  data = read_data()
  data.each do |faculty|
    if faculty["faculty_id"] == faculty_id
      faculty["name"] = name
      faculty["department"] = department
      faculty["designation"] = designation
      write_data(data)
      puts "Faculty updated successfully\n"
      return
    end
  end
  puts "Faculty not found\n"
end

def display_faculty(faculty_id = nil)
  data = read_data()
  if faculty_id.nil?
    data.each do |faculty|
      puts faculty
    end
    puts ""
  else
    data.each do |faculty|
      if faculty["faculty_id"] == faculty_id
        puts faculty
        return
      end
    end
    puts "Faculty not found\n"
  end
end

def menu()
  loop do
    puts "\n1. Add faculty"
    puts "2. Delete faculty"
    puts "3. Update faculty"
    puts "4. Display faculty"
    puts "5. Exit"
    print "Enter your choice: "
    choice = gets.chomp.to_i
    if choice == 1
      print "Enter faculty id: "
      faculty_id = gets.chomp
      print "Enter name: "
      name = gets.chomp
      print "Enter department: "
      department = gets.chomp
      print "Enter designation: "
      designation = gets.chomp
      add_faculty(faculty_id, name, department, designation)
    elsif choice == 2
      print "Enter faculty id: "
      faculty_id = gets.chomp
      delete_faculty(faculty_id)
    elsif choice == 3
      print "Enter faculty id: "
      faculty_id = gets.chomp
      print "Enter name: "
      name = gets.chomp
      print "Enter department: "
      department = gets.chomp
      print "Enter designation: "
      designation = gets.chomp
      update_faculty(faculty_id, name, department, designation)
    elsif choice == 4
      print "Enter faculty id (leave blank to display all): "
      faculty_id = gets.chomp
      display_faculty(faculty_id.empty? ? nil : faculty_id)
    elsif choice == 5
      break
    else
      puts "Invalid choice. Please enter a number between 1 and 5."
    end
  end
end

menu()
