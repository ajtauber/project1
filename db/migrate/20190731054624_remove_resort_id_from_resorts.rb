class RemoveResortIdFromResorts < ActiveRecord::Migration[5.2]
  def change
    remove_column :resorts, :resort_id, :integer
  end
end
