class AddFeepaidToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :fee_paid, :integer
  end
end
