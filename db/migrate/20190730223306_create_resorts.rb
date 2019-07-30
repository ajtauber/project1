class CreateResorts < ActiveRecord::Migration[5.2]
  def change
    create_table :resorts do |t|
      t.integer :resort_id
      t.text :name
      t.integer :height
      t.integer :lifts
      t.text :location
      t.integer :runs
      t.text :image
      t.integer :customer_id
      t.integer :instructor_id
      t.integer :ticket_id
      t.integer :restaurant_id
      t.integer :rental_id

      t.timestamps
    end
  end
end
