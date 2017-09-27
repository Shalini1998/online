class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :collegename
      t.date :dob
      t.string :contact
      t.string :address

      t.timestamps
    end
  end
end
