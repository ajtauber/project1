class RemoveInstructorIdFromInstructors < ActiveRecord::Migration[5.2]
  def change
    remove_column :instructors, :instructor_id, :integer
  end
end
