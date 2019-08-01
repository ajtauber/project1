class AddResortIdToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :resort_id, :integer
    remove_column :resorts, :ticket_id, :integer
  end
end
