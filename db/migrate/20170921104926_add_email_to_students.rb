class AddEmailToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :email, :string
  end
end
