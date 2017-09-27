class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :fee
      t.integer :duration
      t.boolean :is_paid?

      t.timestamps
    end
  end
end
