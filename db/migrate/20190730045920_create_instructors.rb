class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.integer :instructor_id
      t.text :instructor_name
      t.float :salary
      t.text :resort_name
      t.integer :level
      t.integer :resort_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
