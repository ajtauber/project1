class RemoveTicketIdFromTickets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :ticket_id, :integer

  end
end
