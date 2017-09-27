class AddFeepaidToStudentCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :student_courses, :fee_paid, :integer
  end
end
