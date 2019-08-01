Customer.destroy_all
puts "Creating Customers"
c1 = Customer.create :email => 'ajtauber@ga.co', :password => 'chicken'
c2 = Customer.create :email => 'john@ga.co', :password => 'chicken'
c3 = Customer.create :email => 'joel@ga.co', :password => 'chicken'

Ticket.destroy_all
puts "Creating Tickets"
t1 = Ticket.create :customer_name => 'AJ', :price => '500.00'






puts "Associations"
# Customers and Tickets
c1.tickets << t1

# Customers and Resorts
# r1.customers << c1 << c2
# Customers and Instructors
# c1.instructors << c1 << c2 << c3

#
# l1.songs << s1
# l2.songs << s2
# l3.songs << s3
# l4.songs << s4
# # Artists and Songs
# a1.songs << s1
# a2.songs << s2
# a3.songs << s3
# a4.songs << s4
# # Genres and Songs
# s1.genres << g1 << g2
# s2.genres << g5
# s3.genres << g3 << g4
# g6.songs << s4
# # Mixtapes and Songs
# m1.songs << s1 << s2 << s3 << s4
# m2.songs << s2 << s2 << s2 << s3
# m3.songs << s2 << s4 << s2 << s4
# m4.songs << s4 << s3 << s2 << s2
