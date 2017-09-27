class RenameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :courses, :fee, :total_fee
  end
end
