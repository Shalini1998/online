class RemoveColumnFromCourses < ActiveRecord::Migration[5.0]
  def change
    remove_column :courses, :due_fee, :integer
    remove_column :courses, :fee_paid, :integer
  end
end
