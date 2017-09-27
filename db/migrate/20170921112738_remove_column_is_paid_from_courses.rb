class RemoveColumnIsPaidFromCourses < ActiveRecord::Migration[5.0]
  def change
    remove_column :courses, :is_paid?, :boolean
  end
end
