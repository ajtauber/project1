class CreateCustomersInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :customers_instructors, :id => false  do |t|
      t.integer :customer_id
      t.integer :instructor_id
    end
  end
end
