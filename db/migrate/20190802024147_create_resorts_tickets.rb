class CreateResortsTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :resorts_tickets do |t|
      t.integer :resort_id
      t.integer :ticket_id
    end
  end
end
