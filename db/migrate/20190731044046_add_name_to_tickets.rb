class AddNameToTickets < ActiveRecord::Migration[5.2]
  def change
    #Displays the Customer who purchase the ticket
    add_column :tickets, :customer_name, :text
  end
end
