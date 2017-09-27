class AddDuefeeToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :due_fee, :integer
  end
end
