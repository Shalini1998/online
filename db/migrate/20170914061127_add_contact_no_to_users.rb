class AddContactNoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :contact_no, :string
  end
end
