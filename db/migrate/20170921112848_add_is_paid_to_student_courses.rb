class AddIsPaidToStudentCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :student_courses, :is_paid?, :boolean
  end
end
