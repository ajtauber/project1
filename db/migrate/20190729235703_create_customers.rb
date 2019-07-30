class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :customer_id
      t.text :name
      t.text :address

      t.timestamps
    end
  end
end
