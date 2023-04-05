require "json"

def read_data
  begin
    File.open("files/contacts.json", "r") { |f| JSON.load(f) }
  rescue
    {}
  end
end

def add_contact(contacts, name, number)
  contacts[name] = number
  File.open("files/contacts.json", "w") { |f| JSON.dump(contacts, f) }
  puts "Contact added successfully!"
end

def search_contact(contacts, name)
  if contacts.key?(name)
    puts "Name: #{name}"
    puts "Number: #{contacts[name]}"
  else
    puts "Contact not found."
  end
end

def update_number(contacts, name, new_number)
  if contacts.key?(name)
    contacts[name] = new_number
    File.open("files/contacts.json", "w") { |f| JSON.dump(contacts, f) }
    puts "Number updated successfully!"
  else
    puts "Contact not found."
  end
end

def update_name(contacts, name, new_name)
  if contacts.key?(name)
    number = contacts[name]
    contacts.delete(name)
    contacts[new_name] = number
    File.open("files/contacts.json", "w") { |f| JSON.dump(contacts, f) }
    puts "Name updated successfully!"
  else
    puts "Contact not found."
  end
end

def delete_contact(contacts, name)
  if contacts.key?(name)
    contacts.delete(name)
    File.open("files/contacts.json", "w") { |f| JSON.dump(contacts, f) }
    puts "Contact deleted successfully!"
  else
    puts "Contact not found."
  end
end

def display_contact(contacts, name = nil)
  if name
    if contacts.key?(name)
      puts "Name: #{name}"
      puts "Number: #{contacts[name]}"
    else
      puts "Contact not found"
    end
  else
    contacts.each { |name, number| puts "#{name}: #{number}" }
    puts
  end
end

def menu
  loop do
    puts "\n1. Add new contact"
    puts "2. Search contact"
    puts "3. Update number"
    puts "4. Update name"
    puts "5. Delete contact"
    puts "6. Exit"
    print "Enter your choice : "
    choice = gets.chomp.to_i
    contacts = read_data
    case choice
    when 1
      print "Enter the name : "
      name = gets.chomp
      print "Enter the phone number: "
      number = gets.chomp
      add_contact(contacts, name, number)
    when 2
      print "Enter the name : "
      name = gets.chomp
      search_contact(contacts, name)
    when 3
      print "Enter the name : "
      name = gets.chomp
      print "Enter the new number: "
      new_number = gets.chomp
      update_number(contacts, name, new_number)
    when 4
      print "Enter the previous name : "
      name = gets.chomp
      print "Enter the new name: "
      new_name = gets.chomp
      update_name(contacts, name, new_name)
    when 5
      print "Enter the name : "
      name = gets.chomp
      delete_contact(contacts, name)
    when 6
      break
    else
      puts "Invalid choice. Please enter a number between 1 and 6."
    end
  end
end

menu()
