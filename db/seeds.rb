Customer.destroy_all
puts "Creating Customers"
c1 = Customer.create :email => 'ajtauber@ga.co', :password => 'chicken'
c2 = Customer.create :email => 'john@ga.co', :password => 'chicken'
c3 = Customer.create :email => 'joel@ga.co', :password => 'chicken'

Ticket.destroy_all
puts "Creating Tickets"
t1 = Ticket.create :customer_name => 'AJ', :price => '500.00'
t2 = Ticket.create :customer_name => 'John', :price => '200.00'
t3 = Ticket.create :customer_name => 'Joel', :price => '50.00'
#
Resort.destroy_all
puts "Creating Resorts"
r1 = Resort.create :name => 'Whister Blackcomb', :height => '2,184', :lifts => '37', :location => 'Vancouver, Canada', :runs => '200'




puts "Associations"
# Customers and Tickets
c1.tickets << t1
c2.tickets << t2
c3.tickets << t3

# Customers and Resorts
# r1.customers << c1 << c2
# Customers and Instructors
# c1.instructors << c1 << c2 << c3
