print "Product Name : "
name = gets.chomp
print "No of quantity : "
quantity = gets.chomp.to_i
print "Price of each product : "
price = gets.chomp.to_f
puts(" " * 25 + "BILL" + " " * 25)
puts("Item Name Item Quality Item Price")
puts("#{name} #{quantity} #{price}")
puts("*" * 50)
puts("Total Amount to be paid: #{quantity * price}")
puts("*" * 50)
