Customer.destroy_all
puts "Creating Customers"
c1 = Customer.create :email => 'ajtauber@ga.co', :password => 'chicken'
