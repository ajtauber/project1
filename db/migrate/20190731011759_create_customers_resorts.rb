class CreateCustomersResorts < ActiveRecord::Migration[5.2]
  def change
    create_table :customers_resorts, :id => false  do |t|
      t.integer :customer_id
      t.integer :resort_id
    end
  end
end
