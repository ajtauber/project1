class CreateInstructorsTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors_tickets, :id => false do |t|
      t.integer :instructor_id
      t.integer :ticket_id
    end
  end
end
