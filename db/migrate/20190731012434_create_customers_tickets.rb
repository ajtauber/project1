class CreateCustomersTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :customers_tickets, :id => false  do |t|
      t.integer :customer_id
      t.integer :ticket_id
    end
  end
end
