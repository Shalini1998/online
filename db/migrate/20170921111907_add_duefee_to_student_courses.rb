class AddDuefeeToStudentCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :student_courses, :due_fee, :integer
  end
end
